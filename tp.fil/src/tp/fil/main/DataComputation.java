package tp.fil.main;

import java.io.FileOutputStream;
import java.io.IOException;

import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.emf.ecore.xmi.impl.EcoreResourceFactoryImpl;
import org.eclipse.emf.ecore.xmi.impl.XMIResourceFactoryImpl;
import org.eclipse.modisco.java.emf.JavaPackage;
import org.eclipse.modisco.java.Model;
import org.eclipse.modisco.java.Package;
import org.eclipse.modisco.java.AbstractTypeDeclaration;
import org.eclipse.modisco.java.BodyDeclaration;
import org.eclipse.modisco.java.ClassDeclaration;
import org.eclipse.modisco.java.FieldDeclaration;


public class DataComputation {
	
	public static void main(String[] args) {
		try {
			System.out.println("Start ...");
			Resource javaModel;
			Resource dataModel;
			Resource dataMetamodel;
			
			//Create and configure resource set
			ResourceSet resSet = new ResourceSetImpl();
			resSet.getResourceFactoryRegistry().
				getExtensionToFactoryMap().
				put("ecore", new EcoreResourceFactoryImpl());
			resSet.getResourceFactoryRegistry().
				getExtensionToFactoryMap().
				put("xmi", new XMIResourceFactoryImpl());
			
			//Load Java & Data metamodel
			JavaPackage.eINSTANCE.eClass();
			
			dataMetamodel = resSet.createResource(URI.createFileURI("src/tp/fil/resources/Data.ecore"));
			dataMetamodel.load(null);
			EPackage.Registry.INSTANCE.
				put("http://data", dataMetamodel.getContents().get(0));
			
			//Load Java model
			javaModel = resSet.createResource(URI.createFileURI("G:\\eclipse-modeling-workspace\\PetStore\\PetStore_java.xmi"));
			javaModel.load(null);
			
			//Initiate Data model with a "Model" root object/element
			dataModel = resSet.createResource(URI.createFileURI("G:\\eclipse-modeling-workspace\\PetStore\\PetStore_data2.xmi"));
			
			EPackage dataPackage = (EPackage) dataMetamodel.getContents().get(0);
			EClass modelClass = (EClass) dataPackage.getEClassifier("Model");
			EObject modelObject = dataPackage.getEFactoryInstance().create(modelClass);
			
			Model javaModelRootElement = (Model) javaModel.getContents().get(0);
			modelObject.eSet(modelClass.getEStructuralFeature("name"), javaModelRootElement.getName());
			dataModel.getContents().add(modelObject);
			
			//Build the actual Data model by navigating the Java model
			//and creating the appropriate Data model elements...
			TreeIterator<EObject> iterator = javaModel.getAllContents();
			
			/*
			 * Beginning of the part to be completed...
			 */
			
			while(iterator.hasNext()) {
				EObject currentModelElement = iterator.next();
				if( currentModelElement.eClass().getName().equals("Model") ) {					
					for( EObject e : currentModelElement.eContents()) {
						if (e.eClass().getName().equals("Package")) {
							for( EObject pc : e.eContents()) {
								EClass packageClass = (EClass) dataPackage.getEClassifier("Package");
								EObject packageObject = dataPackage.getEFactoryInstance().create(packageClass);
								packageObject.eSet(packageClass.getEStructuralFeature("name"), pc.eGet(pc.eClass().getEStructuralFeature("name")));
								dataPackage.getEClassifiers().add(packageObject.eClass());
								//EObject totalWrapperObject = pc.eClass().getEFactoryInstance().create(totalWrapperClass);
								//totalWrapperObject.eSet(totalWrapperClass.getEStructuralFeature("total"), totalSalary);							}
							}
						}
					}
					
					EStructuralFeature attr = currentModelElement.eClass().getEStructuralFeature("name");
					/*
					 * TreeIterator<EObject> iteratorP = currentModelElement.eAllContents();
					 * while(iteratorP.hasNext()) { EObject currentModelElementP = iterator.next();
					 * }
					 */
					String name = (String) currentModelElement.eGet(attr);
					currentModelElement.eSet(attr, name);
				}
			}
			
			dataModel.getContents().add(dataPackage);
			
			
			
			/*
			 * End of the part to be completed...
			 */
			
			//Serialize Data model
			dataModel.save(null);
			
			//Unload models
			javaModel.unload();
			dataModel.unload();
			System.out.println("Done !");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}