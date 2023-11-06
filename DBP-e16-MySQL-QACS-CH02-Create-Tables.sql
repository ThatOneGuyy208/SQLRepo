/****************************************************************************/
/*																			*/
/*	Kroenke, Auer, and Vandenberg											*/
/*	Database Processing (16th Edition) Chapter 02							*/
/*																			*/
/*	The Queen Anne Curiousity Shop [QACS_CH02] Database - Create Tables		*/
/*																			*/
/*	These are the MySQL 8.0	SQL code solutions 								*/
/*	 																		*/
/****************************************************************************/
/*												                            */
/*	NOTE:  These SQL Statements use the following surrogate keys:	        */
/*																	        */
/*		CUSTOMER.CustomerID:	Start at 1, Increment by 1		            */
/*		ITEM.ItemID:			Start at 1, Increment by 1 		            */
/*		SALE.SaleID:			Start at 1, Increment by 1 		            */
/*															                */
/****************************************************************************/



/*****   CUSTOMER   *********************************************************/

CREATE  TABLE CUSTOMER(
	CustomerID			        Int			     		NOT NULL AUTO_INCREMENT,
	LastName			        Char(25)	     		NOT NULL,
	FirstName			        Char(25)	     		NOT NULL,
	EmailAddress			    VarChar(100) 	 		NULL,
	EncryptedPassword			VarChar(50)		 		NULL,
	Address				        Char(35)	     		NULL,
	City				        Char(35)	     		NULL,
	State				        Char(2)		     		NULL,
	ZIP					        Char(10)	     		NULL,
	Phone				        Char(12)	     		NOT NULL,
	ReferredBy					Int			 	 		NULL,	
	CONSTRAINT 			        CUSTOMER_PK 	 		PRIMARY KEY(CustomerID),
	CONSTRAINT 					ReferredyBy_Cust_FK		FOREIGN KEY(ReferredBy) 
									REFERENCES CUSTOMER(CustomerID)
	);


/*****   ITEM   *************************************************************/

CREATE  TABLE ITEM(
	ItemID				        Int		        		NOT NULL AUTO_INCREMENT,
	ItemDescription		        VarChar(255)    		NOT NULL,
	CompanyName					Char(100)				NOT NULL,
	PurchaseDate		        Date    	    		NOT NULL,
	ItemCost			        Numeric(9,2)    		NOT NULL,
	ItemPrice			        Numeric(9,2)    		NOT NULL,
	CONSTRAINT 			    	ITEM_PK			   		PRIMARY KEY (ItemID)
	);

/*****   SALE   *************************************************************/

CREATE  TABLE SALE(
	SaleID				        Int						NOT NULL AUTO_INCREMENT,
	CustomerID			        Int	 					NOT NULL,
	SaleDate			        Date		    		NOT NULL,
	SubTotal			        Numeric(15,2)   		NULL,
	Tax					        Numeric(15,2)   		NULL,
	Total				        Numeric(15,2)   		NULL,
	CONSTRAINT 			    	SALE_PK 		        PRIMARY KEY(SaleID),
	CONSTRAINT 			    	SALE_CUSTOMER_FK     	FOREIGN KEY(CustomerID)
									REFERENCES CUSTOMER(CustomerID)
	);
/*****   SALE_ITEM   ********************************************************/

CREATE  TABLE SALE_ITEM(
	SaleID				        Int		      		 	NOT NULL,
	SaleItemID			        Int		       			NOT NULL,
	ItemID				        Int		       			NOT NULL,
	ItemPrice			        Numeric(9,2)   			NOT NULL,
	CONSTRAINT 			    	SALE_ITEM_PK 			PRIMARY KEY (SaleID, SaleItemID),
	CONSTRAINT 			    	SALE_ITEM_SALE_FK 		FOREIGN KEY (SaleID)
									REFERENCES SALE(SaleID)
										ON DELETE CASCADE,
	CONSTRAINT 			    	SALE_ITEM_ITEM_FK 		FOREIGN KEY (ItemID)
								    REFERENCES ITEM(ItemID)
	);

/******************************************************************************/