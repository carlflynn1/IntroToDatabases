/* Last Update Date:  6-12-2018  */

/* Updated By:  Carl Flynn   */

/* Script Starts here */

/* Database stuff */

DROP DATABASE IF EXISTS HospitalDB;

CREATE DATABASE HospitalDB;

USE HospitalDB;

/* Table Scripts */

DROP TABLE IF EXISTS ward;
	
CREATE TABLE ward
(
	ward_id INTEGER NOT NULL AUTO_INCREMENT,
	ward_name VARCHAR(20),
	pward_id INTEGER,
	PRIMARY KEY (ward_id));
    
    CREATE TABLE patients
(
	pat_id INTEGER NOT NULL AUTO_INCREMENT,
	pat_name VARCHAR(255),
	pat_address VARCHAR(255),
    pat_dob DATE,
    pat_check_in DATE NOT NULL,
    pat_check_out DATE,
    pat_charge DECIMAL(4,2) NOT NULL DEFAULT 80.00,
	pat_ward_id INTEGER,
	PRIMARY KEY (pat_id),
	FOREIGN KEY (pat_ward_id) REFERENCES ward (ward_id));
    
    CREATE TABLE nurses
(
	nurse_id INTEGER NOT NULL AUTO_INCREMENT,
	nurse_name VARCHAR(255),
	nurse_ward_id INTEGER,
	PRIMARY KEY (nurse_id),
	FOREIGN KEY (nurse_ward_id) REFERENCES ward (ward_id));
    
    CREATE TABLE wsister
(
	wsister_id INTEGER NOT NULL AUTO_INCREMENT,
	wsister_name VARCHAR(255),
	wsister_ward_id INTEGER,
	PRIMARY KEY (wsister_id),
	FOREIGN KEY (wsister_ward_id) REFERENCES ward (ward_id));
    
    CREATE TABLE consultant
(
	con_id INTEGER NOT NULL AUTO_INCREMENT,
	con_name VARCHAR(255),
    con_charge DECIMAL(6,2) NOT NULL DEFAULT 100.00,
	con_ward_id INTEGER,
	PRIMARY KEY (con_id),
	FOREIGN KEY (con_ward_id) REFERENCES ward (ward_id));
    
    DROP TABLE IF EXISTS medicine;
	
	CREATE TABLE medicine
(
  med_id INTEGER NOT NULL AUTO_INCREMENT,
  med_name VARCHAR(255) NOT NULL,
  med_duration INT,
  med_rate DECIMAL(4,2) NOT NULL DEFAULT 2.00,
  med_pat_id INTEGER,
  PRIMARY KEY  (med_id),
  FOREIGN KEY (med_pat_id) REFERENCES patients (pat_id));

INSERT INTO ward
(ward_name )
VALUES
('CancerPub'),
('CancerPriv'),
('GeneralPub'),
('GeneralPriv'),
('CardiacPub'),
('CardiacPriv'),
('DermatologyPub'),
('DermatologyPriv'),
('HaematologyPub'),
('HaematologyPriv'),
('ImmunologyPub'),
('ImmunologyPriv'),
('NeurologyPub'),
('NeurologyPriv'),
('PhysiotherapyPub'),
('PhysiotherapyPriv'),
('PsychiatryPub'),
('PsychiatryPriv'),
('RespitoryPub'),
('RespitoryPriv'),
('VascularPub'),
('VascularPriv'),
('GynecologyPub'),
('GynecologyPriv');

/*1st Lot*/
INSERT INTO patients
(pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id )
VALUES
('Cian Flynn', '13 Sherrif Street Lower', '1998-09-12', '2018-05-28', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Stesha Lofthouse', '91465 Iowa Point', '1958/04/26', '2018/06/23', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Fritz Slimming', '5180 Derek Park', '1995/08/26', '2018/09/30', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Gordon Keble', '859 Lotheville Court', '1952/02/21', '2018/09/23', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Carin Ions', '6 Eggendart Court', '1985/01/11', '2018/04/29', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Seumas Dory', '5727 Hoepker Court', '1977/01/21', '2018/10/09', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Giralda Forsdike', '382 Bartillon Pass', '1943/09/30', '2018/04/04', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Nicola Eglinton', '45641 Toban Way', '1947/04/20', '2018/02/18', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Sandy Roland', '72 Bultman Parkway', '1942/07/10', '2018/06/07', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Chandra Ruddick', '1 Transport Avenue', '1938/10/18', '2018/01/04', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Gwenni Dowey', '045 School Street', '1994/01/31', '2018/03/13', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Debby Smithers', '3166 Quincy Alley', '1998/04/20', '2018/10/22', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Chris Mayho', '87009 Duke Hill', '1989/05/23', '2018/08/25', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Rowan O''Rudden', '9 Washington Road', '1989/03/06', '2018/11/09', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Minetta Kenchington', '14 North Way', '1966/06/08', '2018/03/10', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Cris De Fries', '74 Rigney Hill', '1961/04/18', '2018/05/31', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Sheppard Ghilks', '4 Brentwood Circle', '1937/03/18', '2018/03/07', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jeannie Gurry', '51626 Sunfield Drive', '1942/09/22', '2018/05/11', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Hersch Chatain', '875 Clyde Gallagher Plaza', '1978/05/04', '2018/06/15', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Maridel Kyngdon', '602 Park Meadow Avenue', '1947/07/30', '2018/06/18', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jorrie Franklin', '39496 Homewood Drive', '1958/11/18', '2018/04/21', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Talya Secrett', '4 Farmco Park', '1963/09/29', '2018/05/24', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Nerta Aleksankov', '8134 Fallview Way', '1994/09/01', '2018/05/07', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Cam Sleit', '0403 Drewry Street', '1953/06/24', '2018/04/05', DEFAULT, 1);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jolee Woolvett', '9407 Randy Parkway', '1966/01/22', '2018/03/15', DEFAULT, 1);
/*2nd LOT*/
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Salomi Hairyes', '357 Darwin Point', '1956/08/17', '2018/12/05', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Maggee Brain', '274 Schurz Court', '1996/12/22', '2018/08/21', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Grier Thomkins', '3625 Gina Lane', '1961/12/15', '2018/07/13', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jeddy Rickeard', '03267 Fulton Center', '1969/05/03', '2018/02/05', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Paxon Castan', '65 Heffernan Alley', '1964/01/21', '2018/05/05', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ernestus Fawckner', '0 Thackeray Way', '1987/06/06', '2018/07/09', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Tobit Saggs', '5 Trailsway Place', '1942/11/05', '2018/06/14', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Laurena Legan', '26512 Reindahl Pass', '1995/08/24', '2018/07/13', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Cayla Puttrell', '783 Golf Lane', '1989/02/09', '2018/06/02', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Delmer Brumham', '93 Russell Plaza', '1991/07/30', '2018/12/04', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Flem Zanre', '09148 Daystar Hill', '1945/04/14', '2018/11/20', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Fairleigh Crampsey', '812 Independence Hill', '1951/12/23', '2018/04/25', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Cecilio Benam', '33 Westerfield Court', '1987/05/14', '2018/02/10', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Rosella Bittlestone', '60 Chive Street', '1975/07/12', '2018/07/30', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Boote Dadswell', '729 Manitowish Parkway', '1989/11/13', '2018/02/10', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Trina Pellissier', '45 Grasskamp Alley', '1995/04/05', '2018/05/09', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Anthony Suter', '5 Towne Parkway', '1976/11/01', '2018/01/04', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Rakel Jollye', '4 Weeping Birch Circle', '1998/10/21', '2018/08/24', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Reagan Featherstonhaugh', '1 Towne Street', '1971/02/09', '2018/08/01', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Abigail Steljes', '46 Browning Pass', '1982/01/29', '2018/03/25', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ettore Drakes', '96454 Sutteridge Point', '1947/12/27', '2018/11/10', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Sayers Hold', '09178 Manitowish Street', '1990/07/06', '2018/05/15', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jonathon Crossfeld', '6 Loeprich Street', '1980/11/24', '2018/01/02', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ariel Itzakson', '8 Monument Avenue', '1961/05/07', '2018/04/27', DEFAULT, 2);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Roz Caswell', '184 Pleasure Point', '1976/11/27', '2018/10/26', DEFAULT, 2);
/*3rd Lot*/
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Cecil Sellek', '2 Dahle Terrace', '1957/07/19', '2018/06/16', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Alysia Chettle', '518 Monument Road', '1951/10/22', '2018/09/10', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Dari Ginman', '41487 Brown Alley', '1969/09/29', '2018/08/24', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Stavros Lebarree', '88 Main Center', '1955/05/20', '2018/04/27', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Janela Daintree', '2 Darwin Terrace', '1977/01/05', '2018/07/02', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Anet Letrange', '95 Bluejay Lane', '1959/01/19', '2018/07/01', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Mavra Pulhoster', '74 Namekagon Plaza', '1963/01/22', '2018/06/30', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Blaire McGahern', '37628 Ridge Oak Center', '1969/06/08', '2018/08/25', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Pamelina Thelwll', '270 Manufacturers Parkway', '1973/09/27', '2018/07/23', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Brandea Onthank', '1 Marcy Drive', '1936/09/14', '2018/04/01', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Clevey Orgen', '110 Arapahoe Road', '1972/03/31', '2018/06/28', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Dehlia MacKenney', '2 Pleasure Junction', '1945/06/14', '2018/12/05', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Dolli Doddemeade', '0854 Hintze Hill', '1940/06/10', '2018/01/18', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Waverley Barette', '86 Scott Road', '1990/12/23', '2018/03/30', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Dagmar Hullin', '59 Warbler Junction', '1956/01/15', '2018/02/17', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Berta Raulston', '444 North Alley', '1954/08/30', '2018/01/22', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Will Facey', '36494 International Road', '1980/08/24', '2018/02/15', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Florentia Lamplugh', '89604 Quincy Point', '1968/09/23', '2018/06/11', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Spike Reddie', '49658 Arkansas Way', '1966/10/29', '2018/09/16', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Lorant Cunniam', '00718 Macpherson Circle', '1949/08/06', '2018/04/07', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Arney Dulake', '1 Monterey Street', '1948/03/25', '2018/04/10', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Kerr Botright', '17 Drewry Center', '1980/12/25', '2018/05/03', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Margarette Dradey', '834 Birchwood Court', '1995/06/18', '2018/07/28', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Corabella Curnucke', '204 Goodland Point', '1950/08/24', '2018/10/15', DEFAULT, 3);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Daryl Findon', '91381 East Avenue', '1975/02/01', '2018/09/04', DEFAULT, 3);
/*4th Lot*/
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Dorthy Baudasso', '05069 Crownhardt Avenue', '1936/05/20', '2018/01/12', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Rubia Ville', '5341 1st Trail', '1939/04/02', '2018/03/06', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jobina Seeger', '6421 Loeprich Plaza', '1937/06/14', '2018/06/16', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Raimundo Desseine', '3 Packers Plaza', '1991/05/17', '2018/09/26', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Darice Younglove', '1 Schurz Terrace', '1953/04/08', '2018/10/28', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Yoko Ticehurst', '7177 Sycamore Place', '1996/07/20', '2018/10/14', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Cassandre Breukelman', '284 New Castle Junction', '1954/02/03', '2018/02/06', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Laurel Beames', '462 Meadow Vale Trail', '1954/03/22', '2018/05/23', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Carita Blackeby', '6 Petterle Trail', '1955/08/24', '2018/01/04', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Morna Ricciardo', '88 Katie Street', '1996/11/30', '2018/01/30', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Rutherford Ruslinge', '09775 Hayes Avenue', '1987/09/02', '2018/11/28', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Nolly Pedrozzi', '075 Bashford Court', '1988/10/11', '2018/08/14', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Deedee Caret', '9 Lerdahl Plaza', '1973/10/14', '2018/08/09', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Cesaro Prescott', '552 Bartelt Center', '1947/03/22', '2018/03/01', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Giacobo Le Grove', '63298 Oxford Hill', '1968/06/24', '2018/02/22', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Kay Churchin', '687 Katie Place', '1952/05/02', '2018/06/01', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Helen Esley', '28744 Mendota Parkway', '1962/08/10', '2018/02/07', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Vasilis Moles', '7292 Monterey Point', '1954/04/30', '2018/04/28', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Trace Anfosso', '4 Mosinee Plaza', '1954/01/31', '2018/10/07', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Caroline Corbet', '3562 Nelson Crossing', '1950/09/30', '2018/12/06', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Costanza Von Brook', '327 Donald Trail', '1991/09/15', '2018/11/22', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jennie Pruce', '8184 Prairieview Way', '1965/10/11', '2018/07/24', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Leora Josefsen', '52 Kennedy Avenue', '1936/04/03', '2018/08/04', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Aila Vigietti', '9101 Kennedy Pass', '1954/12/31', '2018/11/21', DEFAULT, 4);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ferguson McGillreich', '0562 Cardinal Pass', '1994/12/21', '2018/05/30', DEFAULT, 4);
/*5th Lot*/
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Georgie Woodhouse', '598 Brown Hill', '1944/05/11', '2018/09/11', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Dwain Rendall', '64 Columbus Junction', '1990/01/09', '2018/02/27', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Hortense Heeley', '05896 Thierer Park', '1964/05/26', '2018/01/10', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Deny Matuszinski', '2 Blackbird Junction', '1958/11/17', '2018/01/12', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Erwin Rosewell', '3868 Mifflin Road', '1997/04/05', '2018/02/21', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Bettina Sellars', '948 Del Mar Circle', '1977/08/27', '2018/06/24', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('El Pennazzi', '3263 Schurz Plaza', '1985/11/12', '2018/07/02', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Bendick June', '2 Continental Avenue', '1970/02/23', '2018/02/24', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Tymon Bidder', '3 Rockefeller Avenue', '1975/07/07', '2018/11/05', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Owen Kesley', '50 Cody Court', '1961/11/28', '2018/06/10', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Gale Priestnall', '0049 Knutson Terrace', '1962/03/28', '2018/11/25', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Stan Dallicott', '4 Meadow Ridge Lane', '1987/01/16', '2018/04/21', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Rebekah Bilney', '269 Sherman Circle', '1972/02/19', '2018/04/29', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jermaine Sager', '916 Bunker Hill Hill', '1979/11/03', '2018/05/02', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Leyla Matura', '700 Saint Paul Court', '1966/05/22', '2018/02/27', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Gibby Skally', '79990 Larry Center', '1967/08/13', '2018/05/22', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Clair Fearneley', '6 Autumn Leaf Crossing', '1953/12/14', '2018/07/14', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Clive Tolchar', '0 Carey Hill', '1971/10/30', '2018/02/22', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Evelin Leile', '2215 Hanover Park', '1962/12/21', '2018/11/15', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Oliviero Aish', '9829 8th Pass', '1940/07/22', '2018/08/14', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Giulietta Jaxon', '31 Schmedeman Parkway', '1960/01/29', '2018/11/10', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Eudora Mepham', '284 Vahlen Avenue', '1978/06/12', '2018/01/12', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Lesly Kilalea', '1707 Oak Court', '1970/12/25', '2018/02/01', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Carr Hutton', '7907 Kinsman Alley', '1957/01/25', '2018/08/17', DEFAULT, 5);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Skippy Rubinow', '9421 Menomonie Road', '1938/10/19', '2018/11/06', DEFAULT, 5);
/*6th Lot*/
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Kleon Momery', '0 Claremont Junction', '1963/12/20', '2018/07/09', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Rodge Siddeley', '613 Maple Wood Court', '1968/02/08', '2018/01/21', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Clovis Welburn', '8317 Westerfield Way', '1962/01/09', '2018/05/22', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Lewes Duerden', '343 Moulton Street', '1952/06/03', '2018/07/20', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Pearce Gonnelly', '8212 Melrose Junction', '1985/03/06', '2018/07/02', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Nolly Grafhom', '97 Schmedeman Trail', '1961/10/06', '2018/08/09', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Buckie Le Sarr', '97538 Swallow Trail', '1958/01/02', '2018/10/04', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Bel Skahill', '6 Boyd Parkway', '1982/07/01', '2018/05/20', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Brandon Petrazzi', '1014 Alpine Court', '1967/09/28', '2018/04/21', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Meggy Lineker', '368 Rutledge Crossing', '1945/11/15', '2018/05/25', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Hakim Fidler', '84220 Lake View Place', '1936/08/24', '2018/04/05', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Doloritas Tresler', '214 Hollow Ridge Crossing', '1963/09/12', '2018/12/06', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Bryce Pibsworth', '1 Lake View Street', '1978/08/24', '2018/03/14', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Joannes Chataignier', '40183 Debs Circle', '1953/05/03', '2018/01/05', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Iggy Fawlkes', '251 Dawn Drive', '1958/09/21', '2018/01/02', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Chris Bertrand', '9209 Utah Place', '1993/08/26', '2018/03/23', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Karol Duchart', '5414 Veith Trail', '1940/07/16', '2018/10/25', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Glori Gillow', '542 Fremont Circle', '1970/07/03', '2018/02/25', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Bronny Aves', '141 Northridge Court', '1971/09/23', '2018/01/07', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Mirelle Ingerfield', '258 Rusk Alley', '1974/07/25', '2018/01/22', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Antin Pittendreigh', '06823 Morningstar Trail', '1945/02/15', '2018/01/16', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Gillie Benduhn', '94 Duke Crossing', '1980/04/01', '2018/05/26', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Leta Carillo', '6660 Stang Center', '1997/10/22', '2018/03/31', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jeremy Baly', '7441 Badeau Place', '1981/06/29', '2018/09/09', DEFAULT, 6);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Leslie Tilby', '07374 Veith Street', '1953/04/02', '2018/07/06', DEFAULT, 6);
/*7th Lot*/
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Gene Stollsteimer', '35042 Sunfield Road', '1944/06/20', '2018/03/01', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Emelyne Redemile', '4 Ronald Regan Point', '1941/03/03', '2018/06/18', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Antoinette Redmond', '6 Farragut Terrace', '1976/07/27', '2018/11/03', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Kareem Binnell', '6034 Brown Hill', '1965/09/05', '2018/02/02', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Abbye Hoggan', '0 Susan Circle', '1950/04/17', '2018/03/29', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Myrtia Rosenbloom', '6 Coleman Center', '1976/06/10', '2018/09/01', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ediva Gudd', '07 Hoard Junction', '1948/04/09', '2018/08/29', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Raynell Groocock', '322 Eggendart Point', '1957/10/22', '2018/01/16', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Bernete Gosling', '391 Green Street', '1998/03/01', '2018/05/04', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Eddy Rudinger', '42 Jenifer Court', '1954/08/07', '2018/03/01', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Sharleen Sargeant', '07 Harper Alley', '1994/06/04', '2018/08/01', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Wyn Gillbard', '83042 Talmadge Center', '1974/04/12', '2018/02/08', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Keir Iannitti', '1 Mayer Drive', '1982/05/14', '2018/02/04', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Raddy Kluge', '4 Roth Parkway', '1945/02/07', '2018/07/25', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Laurie Siseland', '0 Esch Terrace', '1990/06/02', '2018/10/12', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Francklin Vanyukov', '2 Barnett Junction', '1979/11/03', '2018/11/30', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Pyotr Lescop', '6607 Redwing Street', '1959/04/06', '2018/06/02', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Michaelina Tankus', '4392 Londonderry Alley', '1949/07/06', '2018/04/03', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Gaye Hayler', '272 Manufacturers Terrace', '1995/07/21', '2018/01/23', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Wilt Rignold', '8406 Bunting Terrace', '1986/01/31', '2018/11/01', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Rachel Bonifacio', '5 Marcy Crossing', '1966/02/06', '2018/01/14', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Barbra Spalding', '82033 Canary Way', '1980/10/16', '2018/11/27', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ingra O''Grogane', '4896 Columbus Hill', '1996/03/23', '2018/04/05', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Adair Cruikshanks', '168 Helena Lane', '1961/04/10', '2018/10/15', DEFAULT, 7);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ximenez Guy', '39 Lawn Terrace', '1954/05/27', '2018/01/06', DEFAULT, 7);
/*8th Lot*/
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Janna Dibb', '2991 Schlimgen Plaza', '1968/03/16', '2018/10/27', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Kristan Ervin', '54940 Dapin Drive', '1938/04/09', '2018/02/03', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jonie Lavall', '64559 Moulton Street', '1963/05/02', '2018/03/12', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Berrie Butters', '78 Laurel Trail', '1987/12/29', '2018/07/09', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Wrennie Callf', '96142 Summer Ridge Alley', '1955/03/26', '2018/11/15', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Loree Desforges', '4 Service Road', '1996/02/07', '2018/10/27', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Julia Stanner', '704 Manufacturers Avenue', '1959/06/03', '2018/03/04', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Alanson Allnutt', '2694 Debra Junction', '1956/06/22', '2018/08/16', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Mair Engledow', '45307 Hallows Point', '1984/07/03', '2018/03/28', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Xenos Varty', '3430 Sachs Way', '1936/03/04', '2018/10/13', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Libby Josland', '7 Porter Court', '1968/08/29', '2018/05/21', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Leola Gorgl', '600 Hayes Lane', '1950/03/05', '2018/08/27', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Arlin Pepper', '7 Morrow Park', '1955/10/12', '2018/02/26', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Camille Armstead', '08087 Fisk Road', '1974/07/15', '2018/07/29', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Cosmo Scolts', '3 Oneill Plaza', '1968/11/13', '2018/07/28', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Henrieta Cudmore', '60612 1st Pass', '1940/02/15', '2018/08/10', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Darill De Leek', '9422 Mariners Cove Lane', '1972/09/20', '2018/01/12', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Flossie Colbert', '37 Butternut Trail', '1960/03/06', '2018/08/18', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Aridatha Chilcott', '4 Clyde Gallagher Street', '1962/07/14', '2018/10/09', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Sallyann Kington', '1 Drewry Court', '1997/09/14', '2018/09/04', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Haywood Caswall', '859 American Pass', '1952/12/28', '2018/01/30', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Reinold Gidley', '21 Elmside Junction', '1958/11/14', '2018/10/24', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Duke Jandac', '4 Merchant Parkway', '1958/08/28', '2018/04/10', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Werner Blaydon', '85559 6th Crossing', '1977/06/26', '2018/02/26', DEFAULT, 8);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Cody MacKeever', '3 Golf Course Pass', '1958/03/26', '2018/07/03', DEFAULT, 8);
/*9th Lot*/
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Hugues Manifold', '1 Pawling Way', '1969/10/26', '2018/05/23', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Batholomew Baggott', '0863 Kropf Alley', '1987/04/12', '2018/03/18', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Mallorie Duker', '41837 Forest Junction', '1944/03/24', '2018/05/09', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Gay Eschalette', '54 Ronald Regan Way', '1939/08/12', '2018/02/11', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Hill Cloonan', '71944 Nelson Plaza', '1988/04/21', '2018/02/25', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Krystyna Brewse', '1227 Ryan Circle', '1972/05/19', '2018/08/14', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Adore Pizer', '44 Coolidge Drive', '1981/11/28', '2018/01/17', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Alden Alentyev', '062 Springs Street', '1963/08/09', '2018/12/01', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Dacy Povall', '6 Crescent Oaks Drive', '1950/01/08', '2018/11/14', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Alexine Coull', '79 Hanson Junction', '1938/07/08', '2018/02/09', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Arthur Deniset', '437 Hollow Ridge Pass', '1945/01/08', '2018/07/13', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Valentijn Newns', '3 Warrior Lane', '1978/12/04', '2018/02/21', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Donn Arnholdt', '6 Columbus Avenue', '1984/10/20', '2018/02/19', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jeniece Gracey', '29 Paget Road', '1940/10/03', '2018/03/18', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Aldrich Klazenga', '99 Briar Crest Road', '1972/12/06', '2018/08/16', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Obed Flawith', '380 Kensington Pass', '1939/06/21', '2018/03/21', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ferrell Pullinger', '3018 Grasskamp Drive', '1985/04/07', '2018/05/15', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Pennie Blazic', '72 Kedzie Terrace', '1985/08/27', '2018/08/14', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Giffard Berkowitz', '891 Schlimgen Way', '1944/04/04', '2018/08/29', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Sheela Hartzogs', '6 Ridgeway Crossing', '1997/06/29', '2018/03/07', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Karlene Gillanders', '311 Moose Point', '1998/05/04', '2018/11/19', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Nerita Wontner', '101 Green Ridge Trail', '1938/12/16', '2018/08/30', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Cristionna Butterworth', '124 Armistice Street', '1944/12/07', '2018/04/25', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jeannine Robson', '80597 Graceland Way', '1947/06/04', '2018/04/11', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Tracee Glayzer', '6284 John Wall Center', '1939/05/21', '2018/02/15', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Meris Diess', '6 Cardinal Circle', '1936/04/01', '2018/11/19', DEFAULT, 9);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Donielle Newberry', '741 Eliot Crossing', '1983/04/17', '2018/12/02', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Brant Attwood', '136 Lotheville Road', '1980/07/12', '2018/12/04', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Kimble Curness', '3 Leroy Circle', '1981/09/01', '2018/04/12', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Claudian Handy', '6394 Summer Ridge Pass', '1955/06/20', '2018/03/02', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Eb Howchin', '23 Carey Terrace', '1943/06/19', '2018/05/25', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Evangeline Beck', '95 Namekagon Drive', '1973/06/11', '2018/08/28', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ravi Kynastone', '26551 Westerfield Alley', '1957/07/02', '2018/08/23', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Tomasine Gude', '74 Village Green Alley', '1985/05/03', '2018/09/30', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Marnie Maffia', '033 Sullivan Court', '1972/01/19', '2018/11/04', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Mureil Nugent', '81765 Rieder Drive', '1976/06/18', '2018/09/17', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Christy Bertot', '93 Hanson Court', '1967/08/25', '2018/01/02', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Berthe Dorie', '7 Miller Park', '1970/03/28', '2018/12/02', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Shell Gourley', '506 Eagle Crest Park', '1979/05/06', '2018/07/17', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Chevy Bresland', '008 Lakewood Parkway', '1980/09/03', '2018/03/27', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jarrid Fairhurst', '01 Valley Edge Road', '1993/10/17', '2018/08/20', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Zorah Birkin', '8 Michigan Way', '1974/07/11', '2018/05/31', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Natassia Ciani', '982 Spaight Lane', '1994/03/30', '2018/03/31', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Kellsie Hellen', '28 Kim Alley', '1991/12/14', '2018/12/06', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Kiel Puckey', '6041 Crowley Way', '1989/12/22', '2018/04/28', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Axe Stanett', '96 Spaight Parkway', '1939/09/13', '2018/04/25', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Fara Tinniswood', '99 Anniversary Circle', '1977/06/28', '2018/09/20', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Kip Sanford', '1902 Shelley Court', '1982/09/29', '2018/05/21', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Sanderson Wabe', '7960 Mifflin Street', '1939/08/31', '2018/10/02', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Rubi Tittershill', '66 Shasta Place', '1940/02/19', '2018/03/27', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Collette Andrysiak', '908 Schiller Court', '1993/08/23', '2018/08/30', DEFAULT, 10);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Otho Lissimore', '9119 Gerald Lane', '1973/03/21', '2018/07/07', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Chickie Gobbet', '1808 Sugar Center', '1949/12/03', '2018/04/21', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Garrard Dumbrall', '61 Ridge Oak Circle', '1955/12/01', '2018/02/21', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Raymond Agronski', '54 Riverside Place', '1989/09/12', '2018/02/08', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Klara Fullalove', '009 Huxley Hill', '1985/06/06', '2018/08/27', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Lonny Danelutti', '0 Pepper Wood Circle', '1989/12/02', '2018/01/20', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ashli Hardy-Piggin', '34 Thompson Way', '1942/07/20', '2018/04/14', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Aigneis Ricards', '44151 Erie Road', '1986/04/06', '2018/08/16', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jolyn Grinaugh', '9 Mitchell Hill', '1955/04/18', '2018/01/06',DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Leanna Turland', '0 Carpenter Center', '1980/03/16', '2018/05/20', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Fonzie Atter', '35 Myrtle Park', '1987/06/11', '2018/04/06', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Corabel Mound', '684 Lillian Court', '1977/01/10', '2018/01/14', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Wilmer Cutcliffe', '531 Monterey Parkway', '1978/12/29', '2018/08/27', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Spenser Eric', '20 Commercial Terrace', '1936/11/09', '2018/11/27', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Seamus Gibbonson', '48 Charing Cross Plaza', '1972/10/06', '2018/06/21', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jules Parren', '840 Maywood Center', '1981/03/06', '2018/09/24', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Etan Geipel', '914 Golf View Place', '1957/01/18', '2018/10/08', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Kelwin Darter', '091 Hazelcrest Drive', '1977/07/30', '2018/10/14', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Hendrik Brydell', '452 Portage Pass', '1952/03/30', '2018/11/06', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Gypsy Heenan', '540 Loftsgordon Trail', '1958/10/26', '2018/04/23', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Nike Taudevin', '6 Heath Lane', '1979/03/31', '2018/09/08', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Jacinthe Carmo', '01 Starling Avenue', '1996/10/27', '2018/02/14', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Clemens Larkings', '9 Old Shore Lane', '1996/12/16', '2018/11/17', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Lemmie Pickvance', '83034 Sullivan Place', '1987/02/01', '2018/10/27', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Sophey Moulster', '3 Holmberg Court', '1952/06/27', '2018/03/07', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Othilia Bergeau', '9344 Rigney Plaza', '1976/07/12', '2018/06/09', DEFAULT, 11);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Gaultiero Gibb', '55 Delladonna Street', '1974/11/14', '2018/02/08', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Dalia Cogdon', '2128 Chive Street', '1992/10/04', '2018/03/30', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Linnet Coddington', '0 Merry Park', '1961/10/07', '2018/04/25', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Davine Hearley', '55 Westridge Terrace', '1957/08/11', '2018/06/19', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Haily Brason', '64 Mandrake Alley', '1963/08/10', '2018/01/11', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Ardys Thredder', '2127 Lakewood Place', '1974/12/07', '2018/05/08', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Katie Choat', '94 Buhler Crossing', '1964/08/04', '2018/03/03', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Skell Huet', '3 Sommers Place', '1993/03/06', '2018/06/24', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Alphonso Langran', '98 Northview Point', '1963/01/25', '2018/01/31', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Josh McRobbie', '93418 Ilene Trail', '1977/09/21', '2018/01/31', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Aubrie Toppes', '348 Scoville Point', '1948/03/29', '2018/03/29', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Petrina Irce', '672 Warrior Pass', '1972/09/23', '2018/02/23', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Thomasine Lafaye', '9 Anderson Court', '1977/08/31', '2018/05/24', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Berget Bocken', '57 Pine View Junction', '1944/12/28', '2018/10/04', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Chip Wisedale', '80901 Doe Crossing Pass', '1959/11/17', '2018/10/15', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Isaak Standell', '4 Aberg Junction', '1966/02/22', '2018/08/07', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Lelah Swinerd', '9 Algoma Avenue', '1944/07/19', '2018/09/04', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Skippie Grayer', '701 Utah Pass', '1961/05/04', '2018/01/05', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Winne Galbreath', '152 Susan Park', '1978/11/30', '2018/06/26', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Olivia Sigsworth', '8 West Crossing', '1990/11/13', '2018/08/14', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Darell Valintine', '7 Fallview Road', '1941/02/12', '2018/01/12', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Boycey Stratford', '085 Green Ridge Terrace', '1993/07/19', '2018/05/22', DEFAULT, 12);
insert into patients (pat_name, pat_address, pat_dob, pat_check_in, pat_charge, pat_ward_id) values ('Rob Richardsson', '1998 Quincy Way', '1985/03/04', '2018/05/27', DEFAULT, 12);


INSERT INTO nurses
(nurse_name, nurse_ward_id )
VALUES
('Emily Sheridan', 1);
insert into nurses (nurse_name, nurse_ward_id) values ('Bennie Danet', 1);
insert into nurses (nurse_name, nurse_ward_id) values ('Teddy Frewer', 1);
insert into nurses (nurse_name, nurse_ward_id) values ('Farra Winkell', 1);
insert into nurses (nurse_name, nurse_ward_id) values ('Callie Slaten', 1);
insert into nurses (nurse_name, nurse_ward_id) values ('Clemmie Parade', 2);
insert into nurses (nurse_name, nurse_ward_id) values ('Sylvia Spaughton', 2);
insert into nurses (nurse_name, nurse_ward_id) values ('Marlo Duncan', 2);
insert into nurses (nurse_name, nurse_ward_id) values ('Gian Skuce', 2);
insert into nurses (nurse_name, nurse_ward_id) values ('Angelico Treend', 3);
insert into nurses (nurse_name, nurse_ward_id) values ('Amalia Newcom', 3);
insert into nurses (nurse_name, nurse_ward_id) values ('Bobby Saddington', 3);
insert into nurses (nurse_name, nurse_ward_id) values ('Cecelia enzley', 4);
insert into nurses (nurse_name, nurse_ward_id) values ('Langsdon Moggan', 4);
insert into nurses (nurse_name, nurse_ward_id) values ('Cleopatra Norcop', 4);
insert into nurses (nurse_name, nurse_ward_id) values ('Dolley McIlhagga', 5);
insert into nurses (nurse_name, nurse_ward_id) values ('Ariadne Gianuzzi', 5);
insert into nurses (nurse_name, nurse_ward_id) values ('Teirtza Mantrip', 5);
insert into nurses (nurse_name, nurse_ward_id) values ('Winfield MacAlroy', 6);
insert into nurses (nurse_name, nurse_ward_id) values ('Olivie Neilands', 6);
insert into nurses (nurse_name, nurse_ward_id) values ('Austin Huff', 6);
insert into nurses (nurse_name, nurse_ward_id) values ('Rani Griss', 7);
insert into nurses (nurse_name, nurse_ward_id) values ('Josefina Dowbekin', 7);
insert into nurses (nurse_name, nurse_ward_id) values ('Godwin Ruprechter', 7);
insert into nurses (nurse_name, nurse_ward_id) values ('Barbie Stoffler', 8);
insert into nurses (nurse_name, nurse_ward_id) values ('Dorian MacMearty', 8);
insert into nurses (nurse_name, nurse_ward_id) values ('Josiah Showering', 8);
insert into nurses (nurse_name, nurse_ward_id) values ('Reggy Godsmark', 8);
insert into nurses (nurse_name, nurse_ward_id) values ('Raoul Aymes', 9);
insert into nurses (nurse_name, nurse_ward_id) values ('Germain Darington', 9);
insert into nurses (nurse_name, nurse_ward_id) values ('Lenci McGaraghan', 9);
insert into nurses (nurse_name, nurse_ward_id) values ('Carmina Biskup', 10);
insert into nurses (nurse_name, nurse_ward_id) values ('Rodolphe Popeley', 10);
insert into nurses (nurse_name, nurse_ward_id) values ('Shelba Brockie', 10);
insert into nurses (nurse_name, nurse_ward_id) values ('Darbee Hinksen', 11);
insert into nurses (nurse_name, nurse_ward_id) values ('Tina Schust', 11);
insert into nurses (nurse_name, nurse_ward_id) values ('Audrey Philbrick', 11);
insert into nurses (nurse_name, nurse_ward_id) values ('Dawn Angliss', 12);
insert into nurses (nurse_name, nurse_ward_id) values ('Dale Jorge', 12);
insert into nurses (nurse_name, nurse_ward_id) values ('Shaina Van Halle', 12);
insert into nurses (nurse_name, nurse_ward_id) values ('Lynsey Hackey', 13);
insert into nurses (nurse_name, nurse_ward_id) values ('Charla Broseman', 13);
insert into nurses (nurse_name, nurse_ward_id) values ('Jud Mustchin', 13);
insert into nurses (nurse_name, nurse_ward_id) values ('Lin Bissett', 13);
insert into nurses (nurse_name, nurse_ward_id) values ('Ilaire Sephton', 14);
insert into nurses (nurse_name, nurse_ward_id) values ('Reggis Webburn', 14);
insert into nurses (nurse_name, nurse_ward_id) values ('Alexis Colleymore', 14);
insert into nurses (nurse_name, nurse_ward_id) values ('Jolene Tenaunt', 15);
insert into nurses (nurse_name, nurse_ward_id) values ('Gerianna Croyser', 15);
insert into nurses (nurse_name, nurse_ward_id) values ('Othelia Going', 15);
insert into nurses (nurse_name, nurse_ward_id) values ('Marv Towle', 15);
insert into nurses (nurse_name, nurse_ward_id) values ('Dorelle Franiak', 16);
insert into nurses (nurse_name, nurse_ward_id) values ('Barnebas Lorant', 16);
insert into nurses (nurse_name, nurse_ward_id) values ('Rowland Michurin', 16);
insert into nurses (nurse_name, nurse_ward_id) values ('Cinnamon Sedgman', 17);
insert into nurses (nurse_name, nurse_ward_id) values ('Sheridan Ower', 17);
insert into nurses (nurse_name, nurse_ward_id) values ('Brett Keesman', 17);
insert into nurses (nurse_name, nurse_ward_id) values ('Jeri Astie', 18);
insert into nurses (nurse_name, nurse_ward_id) values ('Gusta Creed', 18);
insert into nurses (nurse_name, nurse_ward_id) values ('Rory Bock', 18);
insert into nurses (nurse_name, nurse_ward_id) values ('Davine Gerber', 19);
insert into nurses (nurse_name, nurse_ward_id) values ('Wilden MacAleese', 19);
insert into nurses (nurse_name, nurse_ward_id) values ('Effie Biasioli', 19);
insert into nurses (nurse_name, nurse_ward_id) values ('Kinna Cree', 20);
insert into nurses (nurse_name, nurse_ward_id) values ('Zachery Mattusevich', 20);
insert into nurses (nurse_name, nurse_ward_id) values ('Konrad Mac Giolla Pheadair', 20);
insert into nurses (nurse_name, nurse_ward_id) values ('Constantin Pumfrey', 20);
insert into nurses (nurse_name, nurse_ward_id) values ('Percy Challiss', 20);
insert into nurses (nurse_name, nurse_ward_id) values ('Joy Borton', 21);
insert into nurses (nurse_name, nurse_ward_id) values ('Doroteya Messier', 21);
insert into nurses (nurse_name, nurse_ward_id) values ('Alano Ribeiro', 21);
insert into nurses (nurse_name, nurse_ward_id) values ('Winny Cahan', 22);
insert into nurses (nurse_name, nurse_ward_id) values ('Willard Ingerson', 22);
insert into nurses (nurse_name, nurse_ward_id) values ('Agathe Peyto', 22);
insert into nurses (nurse_name, nurse_ward_id) values ('Vaughn Fritchly', 23);
insert into nurses (nurse_name, nurse_ward_id) values ('Juliet Barras', 23);
insert into nurses (nurse_name, nurse_ward_id) values ('Faunie Beringer', 23);
insert into nurses (nurse_name, nurse_ward_id) values ('Had Pane', 24);
insert into nurses (nurse_name, nurse_ward_id) values ('Todd Smidmor', 24);
insert into nurses (nurse_name, nurse_ward_id) values ('Amandy Spohr', 24);
insert into nurses (nurse_name, nurse_ward_id) values ('Shem Gamil', 24);


insert into wsister (wsister_name, wsister_ward_id) values ('Andrea Batchelder', 1);
insert into wsister (wsister_name, wsister_ward_id) values ('Paquito Poley', 2);
insert into wsister (wsister_name, wsister_ward_id) values ('Ram De Gowe', 3);
insert into wsister (wsister_name, wsister_ward_id) values ('Syd Olufsen', 4);
insert into wsister (wsister_name, wsister_ward_id) values ('Ora Farriar', 5);
insert into wsister (wsister_name, wsister_ward_id) values ('Caprice Connue', 6);
insert into wsister (wsister_name, wsister_ward_id) values ('Judy Siaskowski', 7);
insert into wsister (wsister_name, wsister_ward_id) values ('Townie Abrehart', 8);
insert into wsister (wsister_name, wsister_ward_id) values ('Jackie Jammet', 9);
insert into wsister (wsister_name, wsister_ward_id) values ('Kaila McClurg', 10);
insert into wsister (wsister_name, wsister_ward_id) values ('Norrie Climie', 11);
insert into wsister (wsister_name, wsister_ward_id) values ('Dillon Grindrod', 12);
insert into wsister (wsister_name, wsister_ward_id) values ('Herve McHarry', 13);
insert into wsister (wsister_name, wsister_ward_id) values ('Brook Mitcham', 14);
insert into wsister (wsister_name, wsister_ward_id) values ('Rodi Wimmer', 15);
insert into wsister (wsister_name, wsister_ward_id) values ('Kalila Barff', 16);
insert into wsister (wsister_name, wsister_ward_id) values ('Glynn Champney', 17);
insert into wsister (wsister_name, wsister_ward_id) values ('Luisa Sorensen', 18);
insert into wsister (wsister_name, wsister_ward_id) values ('Milli Benedtti', 19);
insert into wsister (wsister_name, wsister_ward_id) values ('Jordon de Clerc', 20);
insert into wsister (wsister_name, wsister_ward_id) values ('Deirdre Bertomier', 21);
insert into wsister (wsister_name, wsister_ward_id) values ('Brose Boodle', 22);
insert into wsister (wsister_name, wsister_ward_id) values ('Chance McKune', 23);
insert into wsister (wsister_name, wsister_ward_id) values ('Helga Beningfield', 24);


insert into consultant (con_name, con_charge, con_ward_id) values ('Renato Keelinge', DEFAULT, 1);
insert into consultant (con_name, con_charge, con_ward_id) values ('Marlene McKerrow', DEFAULT, 2);
insert into consultant (con_name, con_charge, con_ward_id) values ('Vicky Spreadbury', DEFAULT, 3);
insert into consultant (con_name, con_charge, con_ward_id) values ('Lindy Osipov', DEFAULT, 4);
insert into consultant (con_name, con_charge, con_ward_id) values ('Sarine Haggleton', DEFAULT, 5);
insert into consultant (con_name, con_charge, con_ward_id) values ('Carlie Diggins', DEFAULT, 6);
insert into consultant (con_name, con_charge, con_ward_id) values ('Andrus Hubach', DEFAULT, 7);
insert into consultant (con_name, con_charge, con_ward_id) values ('Nikolia Howsego', DEFAULT, 8);
insert into consultant (con_name, con_charge, con_ward_id) values ('Garrard Creaney', DEFAULT, 9);
insert into consultant (con_name, con_charge, con_ward_id) values ('Seka Bedburrow', DEFAULT, 10);
insert into consultant (con_name, con_charge, con_ward_id) values ('Libby Neising', DEFAULT, 11);
insert into consultant (con_name, con_charge, con_ward_id) values ('Dick Donovin', DEFAULT, 12);
insert into consultant (con_name, con_charge, con_ward_id) values ('Thayne Hardison', DEFAULT, 13);
insert into consultant (con_name, con_charge, con_ward_id) values ('Bennie Pexton', DEFAULT, 14);
insert into consultant (con_name, con_charge, con_ward_id) values ('Hobie Vearncombe', DEFAULT, 15);
insert into consultant (con_name, con_charge, con_ward_id) values ('Wolf Lattimore', DEFAULT, 16);
insert into consultant (con_name, con_charge, con_ward_id) values ('Arlene Quinell', DEFAULT, 17);
insert into consultant (con_name, con_charge, con_ward_id) values ('Sallyann Maffy', DEFAULT, 18);
insert into consultant (con_name, con_charge, con_ward_id) values ('Silvano Northeast', DEFAULT, 19);
insert into consultant (con_name, con_charge, con_ward_id) values ('Parnell Crum', DEFAULT, 20);
insert into consultant (con_name, con_charge, con_ward_id) values ('Izzy Orriss', DEFAULT, 21);
insert into consultant (con_name, con_charge, con_ward_id) values ('Laurence Myton', DEFAULT, 22);
insert into consultant (con_name, con_charge, con_ward_id) values ('Corena Knightly', DEFAULT, 23);
insert into consultant (con_name, con_charge, con_ward_id) values ('Reinwald Benzi', DEFAULT, 24);


INSERT INTO medicine
(med_name, med_duration, med_rate, med_pat_id )
VALUES
('Penicillin', 5, DEFAULT, 1);