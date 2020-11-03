CREATE TABLE CatalogFacade (
	_id: VARCHAR(255),
	emf: VARCHAR(255),
	utx: VARCHAR(255),
	bDebug: VARCHAR(255)
);
		
CREATE TABLE ZipLocation (
	_id: VARCHAR(255),
	zipCode: VARCHAR(255),
	city: VARCHAR(255),
	state: VARCHAR(255)
);
		
CREATE TABLE Address (
	_id: VARCHAR(255),
	addressID: VARCHAR(255),
	street1: VARCHAR(255),
	street2: VARCHAR(255),
	city: VARCHAR(255),
	state: VARCHAR(255),
	zip: VARCHAR(255),
	latitude: VARCHAR(255),
	longitude: VARCHAR(255),
	COMMA: VARCHAR(255)
);
		
CREATE TABLE Category (
	_id: VARCHAR(255),
	categoryID: VARCHAR(255),
	name: VARCHAR(255),
	description: VARCHAR(255),
	imageURL: VARCHAR(255)
);
		
CREATE TABLE Product (
	_id: VARCHAR(255),
	productID: VARCHAR(255),
	categoryID: VARCHAR(255),
	name: VARCHAR(255),
	description: VARCHAR(255),
	imageURL: VARCHAR(255)
);
		
CREATE TABLE FileUploadResponse (
	_id: VARCHAR(255),
	itemId: VARCHAR(255),
	productId: VARCHAR(255),
	message: VARCHAR(255),
	status: VARCHAR(255),
	duration: VARCHAR(255),
	durationString: VARCHAR(255),
	startDate: VARCHAR(255),
	endDate: VARCHAR(255),
	uploadSize: VARCHAR(255),
	thumbnail: VARCHAR(255)
);
		
CREATE TABLE Item (
	_id: VARCHAR(255),
	itemID: VARCHAR(255),
	productID: VARCHAR(255),
	name: VARCHAR(255),
	description: VARCHAR(255),
	imageURL: VARCHAR(255),
	imageThumbURL: VARCHAR(255),
	price: VARCHAR(255),
	address: VARCHAR(255),
	contactInfo: VARCHAR(255),
	totalScore: VARCHAR(255),
	numberOfVotes: VARCHAR(255),
	disabled: VARCHAR(255),
	tags: VARCHAR(255)
);
		
CREATE TABLE Tag (
	_id: VARCHAR(255),
	tagID: VARCHAR(255),
	items: VARCHAR(255),
	tag: VARCHAR(255),
	refCount: VARCHAR(255)
);
		
CREATE TABLE SellerContactInfo (
	_id: VARCHAR(255),
	contactInfoID: VARCHAR(255),
	lastName: VARCHAR(255),
	firstName: VARCHAR(255),
	email: VARCHAR(255)
);
		
CREATE TABLE RatingBean (
	_id: VARCHAR(255),
	itemId: VARCHAR(255),
	grade: VARCHAR(255),
	cf: VARCHAR(255)
);
		
CREATE TABLE PayPalBean (
	_id: VARCHAR(255),
	postData: VARCHAR(255)
);
		
