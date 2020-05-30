.echo ON

.mode list

.separator "  |  "

.output Create_RGE_out.txt

.open RGE.DB

PRAGMA foreign_keys = ON;



DROP TABLE IF EXISTS contracts_award;
DROP TABLE IF EXISTS equipment_usage;
DROP TABLE IF EXISTS project_progress; 
DROP TABLE IF EXISTS contractors; 
DROP TABLE IF EXISTS salaried_workers; 
DROP TABLE IF EXISTS hourly_workers;
DROP TABLE IF EXISTS employee_project; 
DROP TABLE IF EXISTS client_project; 
DROP TABLE IF EXISTS Sites; 
DROP TABLE IF EXISTS Construction_Equipment;
DROP TABLE IF EXISTS Professional_Engineer; 
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Project; 
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS Truck; 
DROP TABLE IF EXISTS PE_licensing;
DROP TABLE IF EXISTS site_type;
DROP TABLE IF EXISTS project_type;
DROP TABLE IF EXISTS employee_type;
DROP TABLE IF EXISTS equipment_type;


CREATE TABLE equipment_type(
CETID INTEGER CONSTRAINT Equipment_type_CETID_pk PRIMARY KEY, 
CET_equip_type VARCHAR(25) NOT NULL CONSTRAINT CET_equip_type_cc  CHECK((CET_equip_type='bulldozer') OR (CET_equip_type='loader') OR (CET_equip_type='grader') OR (CET_equip_type='telescopic handler') OR (CET_equip_type='tractor scraper')),
CET_desc VARCHAR(50),
quantity INTEGER
);

CREATE TABLE employee_type(
ETID INTEGER CONSTRAINT Employee_type_ETID_pk PRIMARY KEY,  
ET_type CHAR(1) NOT NULL CONSTRAINT ET_type_cc  CHECK((ET_type='P') OR (ET_type='S') OR (ET_type='H') OR (ET_type='C')),
ET_desc VARCHAR(50)
);

CREATE TABLE project_type(
PTID INTEGER CONSTRAINT Project_type_PTID_pk PRIMARY KEY, 
PT_project_type VARCHAR(25) NOT NULL CONSTRAINT PT_project_type  CHECK((PT_project_type='construction') OR (PT_project_type='other')),
PT_desc VARCHAR(50)
);

CREATE TABLE site_type(
STID INTEGER CONSTRAINT Site_type_STID_pk PRIMARY KEY, 
ST_site_type NOT NULL CONSTRAINT ST_site_type_cc  CHECK((ST_site_type='government') OR (ST_site_type='industrial') OR (ST_site_type='commercial') OR (ST_site_type='residential')),
ST_desc VARCHAR(50)
);

CREATE TABLE PE_licensing(
LID CHAR(12) CONSTRAINT PE_licensing_pk PRIMARY KEY, 
L_state_obtained CHAR(2), 
L_issue_date DATE, 
L_education_hours INTEGER
);

CREATE TABLE Truck(
VID INTEGER CONSTRAINT Truck_VID_pk PRIMARY KEY, 
V_year INTEGER NOT NULL, 
V_make VARCHAR(25) NOT NULL, 
V_desc VARCHAR(50) NOT NULL, 
odometer_reading INTEGER, 
odometer_date DATETIME, 
purchaseDate DATE NOT NULL, 
purchasePrice INTEGER NOT NULL, 
partner_assigned CHAR(1) NOT NULL, CONSTRAINT partner_assigned_cc CHECK((partner_assigned='Y') OR (partner_assigned='N'))
);

CREATE TABLE Client(
CID INTEGER CONSTRAINT Client_CID_pk PRIMARY KEY,
C_name VARCHAR(25) NOT NULL,
C_address VARCHAR(50) NOT NULL,
C_city VARCHAR(25) NOT NULL,
C_state VARCHAR(25) NOT NULL,
C_zip NUMBER(5) NOT NULL,
C_contact VARCHAR(50) NOT NULL,
C_phone NUMBER(10) NOT NULL,
C_email VARCHAR(50) NOT NULL,
C_credit_amount INTEGER NOT NULL,
C_source VARCHAR(50) NOT NULL CONSTRAINT C_source_cc  CHECK((C_source='ad') OR (C_source='referral')),
C_who_referred VARCHAR(50) CONSTRAINT Client_referral_fk REFERENCES Client(CID)
);

CREATE TABLE Project(

PID INTEGER CONSTRAINT Project_PID_pk PRIMARY KEY,
P_name VARCHAR(25) NOT NULL,
P_startdate DATE,
P_enddate DATE,
P_contracted_cost INTEGER,
P_contractNum INTEGER,
P_labor_expended INTEGER,
PTID INTEGER CONSTRAINT Project_Type_ID_fk REFERENCES project_type(PTID)
);

CREATE TABLE Employee(
EID INTEGER CONSTRAINT Employee_EID_pk PRIMARY KEY, 
SSN NUMBER(9) NOT NULL, 
DOB DATE NOT NULL,
E_gender CHAR(1) NOT NULL CONSTRAINT E_gender_cc CHECK((E_gender='F') OR (E_gender='M') OR (E_gender='O')),
E_ethnicity VARCHAR(25) NOT NULL, 
E_address VARCHAR(50) NOT NULL, 
E_city VARCHAR(25) NOT NULL,
E_state VARCHAR(25) NOT NULL,
E_zip NUMBER(5) NOT NULL,
E_phone NUMBER(10) NOT NULL,
E_email VARCHAR(50) NOT NULL, 
E_emergency_contact VARCHAR(50),
E_emergency_phone NUMBER(10), 
E_hire_date DATE NOT NULL,
ETID INTEGER CONSTRAINT Employee_Type_ID_fk REFERENCES employee_type(ETID)
);

CREATE TABLE Professional_Engineer(
EID INTEGER CONSTRAINT EID_Professional_Engineer_pk PRIMARY KEY CONSTRAINT EID_Professional_Engineer_fk REFERENCES Employee(EID),
PE_partner_status_date DATE, 
PE_payment INTEGER NOT NULL, 
LID INTEGER CONSTRAINT License_ID_fk REFERENCES PE_licensing(LID), 
VID INTEGER CONSTRAINT Vehicle_ID_fk REFERENCES Truck(VID)
);

CREATE TABLE Construction_Equipment(
CEID INTEGER CONSTRAINT Consturction_Equipment_CEID_pk PRIMARY KEY, 
CE_manufacturer VARCHAR(25) NOT NULL, 
CE_year INTEGER NOT NULL, 
CE_model VARCHAR(25) NOT NULL, 
CE_purchaseDate DATE NOT NULL, 
CE_purchasePrice INTEGER NOT NULL, 
CE_decommission_date DATE NOT NULL, 
CE_selling_price INTEGER NOT NULL, 
CETID CONSTRAINT Construction_equipment_type_ID_fk REFERENCES equipment_type(CETID)
);

CREATE TABLE Sites(
SID INTEGER CONSTRAINT Sites_SID_pk PRIMARY KEY,
platmap_ID CHAR(6) NOT NULL, 
S_address VARCHAR(50) NOT NULL, 
S_city VARCHAR(25) NOT NULL, 
S_county VARCHAR(25) NOT NULL, 
S_state VARCHAR(25) NOT NULL, 
S_zip NUMBER(5) NOT NULL, 
acreage INTEGER NOT NULL,
GIS_coordinates DECIMAL(8,5) NOT NULL, 
server_URL VARCHAR(100) NOT NULL,
STID CONSTRAINT Sites_type_ID_fk REFERENCES site_type(STID)
);

CREATE TABLE client_project(
PID INTEGER CONSTRAINT Client_project_PID_fk REFERENCES Project(PID),
CID INTEGER CONSTRAINT Client_project_CID_fk REFERENCES Client(CID), 
share_percentage DECIMAL(5,2),
CONSTRAINT Client_project_PID_CID_pk PRIMARY KEY (PID, CID)
);

CREATE TABLE employee_project(
EID INTEGER CONSTRAINT Employee_project_EID_fk REFERENCES Employee(EID),
PID INTEGER CONSTRAINT Employee_project_PID_fk REFERENCES Project(PID),
hours_worked INTEGER
);

CREATE TABLE hourly_workers(
EID INTEGER CONSTRAINT EID_hourly_workers_pk PRIMARY KEY CONSTRAINT EID_hourly_workers_fk REFERENCES Employee(EID),
hourly_salary INTEGER NOT NULL
);

CREATE TABLE salaried_workers(
EID INTEGER CONSTRAINT EID_salaried_workers_pk PRIMARY KEY CONSTRAINT EID_salaried_workers_fk REFERENCES Employee(EID),
fixed_monthly_salary INTEGER NOT NULL
);

CREATE TABLE contractors(
EID INTEGER CONSTRAINT EID_contractors_pk PRIMARY KEY CONSTRAINT EID_contractors_fk REFERENCES Employee(EID),
monthly_payment INTEGER NOT NULL
);


CREATE TABLE project_progress(
PID INTEGER CONSTRAINT Project_progress_PID_fk REFERENCES Project(PID),
SID INTEGER CONSTRAINT Project_progress_SID_fk REFERENCES Sites(SID),
progress_level DECIMAL(5,2),
CONSTRAINT Project_progress_PID_SID_pk PRIMARY KEY (PID, SID)
);

CREATE TABLE equipment_usage(
PID INTEGER CONSTRAINT Equipment_usage_PID_fk REFERENCES Project(PID),
SID INTEGER CONSTRAINT Equipment_usage_SID_fk REFERENCES Sites(SID),
CEID INTEGER CONSTRAINT Equipment_usage_CEID_fk REFERENCES Construction_Equipment(CEID),
hours_used INTEGER, 
date_last_used DATETIME,
replacement CHAR(1) CONSTRAINT replacement_cc  CHECK(replacement > 10000),
CONSTRAINT Equipment_usage_PID_SID_CETID_pk PRIMARY KEY (PID, SID, CEID)
);


CREATE VIEW contracts_awarded AS
	SELECT DISTINCT client_project.PID, client_project.CID
	FROM client_project, Project, project_type
	WHERE client_project.PID=Project.PID
	AND Project.PTID=project_type.PTID
	AND project_type.PT_desc = 'construction'
	GROUP BY client_project.PID;


-- CREATE TRIGGER update_labor_cost 
-- 	ON Project AFTER UPDATE 
-- 	AS IF UPDATE(P_labor_charged)
-- 		BEGIN
-- 			DECLARE @P_contracted_cost INTEGER
-- 			DECLARE @P_labor_expended INTEGER
-- 			DECLARE @P_labor_charged INTEGER
-- 			SELECT @P_contracted_cost = (SELECT labor_cost
-- 								  FROM deleted)
-- 			SELECT @P_labor_expended= (SELECT labor_cost
-- 								 FROM inserted)
-- 			SELECT @P_labor_charged= (SELECT P_labor_expended
-- 							  FROM inserted)
-- 			INSERT INTO Project VALUES (@P_contracted_cost, @P_labor_expended, @P_labor_charged)

-- 			END 

.output stdout

.echo off
