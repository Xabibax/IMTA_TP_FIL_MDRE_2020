	
CREATE TABLE CatalogFacade (
	_id: VARCHAR(255),
	emf: VARCJAR(255),
	utx: VARCJAR(255),
	bDebug: VARCJAR(255)
);
		
CREATE TABLE ZipLocation (
	_id: VARCHAR(255),
	zipCode: VARCJAR(255),
	city: VARCJAR(255),
	state: VARCJAR(255)
);
		
CREATE TABLE Address (
	_id: VARCHAR(255),
	addressID: VARCJAR(255),
	street1: VARCJAR(255),
	street2: VARCJAR(255),
	city: VARCJAR(255),
	state: VARCJAR(255),
	zip: VARCJAR(255),
	latitude: VARCJAR(255),
	longitude: VARCJAR(255),
	COMMA: VARCJAR(255)
);
		
CREATE TABLE Category (
	_id: VARCHAR(255),
	categoryID: VARCJAR(255),
	name: VARCJAR(255),
	description: VARCJAR(255),
	imageURL: VARCJAR(255)
);
		
CREATE TABLE Product (
	_id: VARCHAR(255),
	productID: VARCJAR(255),
	categoryID: VARCJAR(255),
	name: VARCJAR(255),
	description: VARCJAR(255),
	imageURL: VARCJAR(255)
);
		
CREATE TABLE FileUploadResponse (
	_id: VARCHAR(255),
	itemId: VARCJAR(255),
	productId: VARCJAR(255),
	message: VARCJAR(255),
	status: VARCJAR(255),
	duration: VARCJAR(255),
	durationString: VARCJAR(255),
	startDate: VARCJAR(255),
	endDate: VARCJAR(255),
	uploadSize: VARCJAR(255),
	thumbnail: VARCJAR(255)
);
		
CREATE TABLE Item (
	_id: VARCHAR(255),
	itemID: VARCJAR(255),
	productID: VARCJAR(255),
	name: VARCJAR(255),
	description: VARCJAR(255),
	imageURL: VARCJAR(255),
	imageThumbURL: VARCJAR(255),
	price: VARCJAR(255),
	address: VARCJAR(255),
	contactInfo: VARCJAR(255),
	totalScore: VARCJAR(255),
	numberOfVotes: VARCJAR(255),
	disabled: VARCJAR(255),
	tags: VARCJAR(255)
);
		
CREATE TABLE Tag (
	_id: VARCHAR(255),
	tagID: VARCJAR(255),
	items: VARCJAR(255),
	tag: VARCJAR(255),
	refCount: VARCJAR(255)
);
		
CREATE TABLE SellerContactInfo (
	_id: VARCHAR(255),
	contactInfoID: VARCJAR(255),
	lastName: VARCJAR(255),
	firstName: VARCJAR(255),
	email: VARCJAR(255)
);
		
CREATE TABLE RatingBean (
	_id: VARCHAR(255),
	itemId: VARCJAR(255),
	grade: VARCJAR(255),
	cf: VARCJAR(255)
);
		
CREATE TABLE PayPalBean (
	_id: VARCHAR(255),
	postData: VARCJAR(255)
);
		

