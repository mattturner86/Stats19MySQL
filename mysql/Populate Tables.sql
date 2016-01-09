-- You must update the paths of each file to the location of the project.

USE stats19;

TRUNCATE TABLE accident; TRUNCATE TABLE casualty; TRUNCATE TABLE vehicle; TRUNCATE TABLE
  Accident_Severity; TRUNCATE TABLE Day_of_Week; TRUNCATE TABLE Light_Conditions; TRUNCATE TABLE Local_Authority_District; TRUNCATE TABLE Local_Authority_Highway; TRUNCATE TABLE Ped_Cross_Human; TRUNCATE TABLE Ped_Cross_Physical; TRUNCATE TABLE Urban_Rural; TRUNCATE TABLE Police_Force; TRUNCATE TABLE Police_Officer_Attend; TRUNCATE TABLE
  Road_Class; TRUNCATE TABLE Road_Type; TRUNCATE TABLE Junction_Detail; TRUNCATE TABLE Junction_Control; TRUNCATE TABLE
  Casualty_Class; TRUNCATE TABLE Casualty_Severity; TRUNCATE TABLE Casualty_Type; TRUNCATE TABLE Ped_Location; TRUNCATE TABLE Ped_Movement; TRUNCATE TABLE Age_Band; TRUNCATE TABLE
  Junction_Location; TRUNCATE TABLE Sex_of_Driver; TRUNCATE TABLE Vehicle_Location; TRUNCATE TABLE Vehicle_Manoeuvre; TRUNCATE TABLE Vehicle_Type;

-- lookup table data  

LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Accident_Severity.csv" INTO TABLE Accident_Severity FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;   
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Accident_Severity.csv" INTO TABLE  Accident_Severity FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Day_of_Week.csv" INTO TABLE  Day_of_Week FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Light_Conditions.csv" INTO TABLE  Light_Conditions FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Local_Authority_District.csv" INTO TABLE  Local_Authority_District FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Local_Authority_Highway.csv" INTO TABLE  Local_Authority_Highway FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Ped_Cross_Human.csv" INTO TABLE  Ped_Cross_Human FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Ped_Cross_Physical.csv" INTO TABLE  Ped_Cross_Physical FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Urban_Rural.csv" INTO TABLE  Urban_Rural FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Police_Force.csv" INTO TABLE  Police_Force FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Police_Officer_Attend.csv" INTO TABLE  Police_Officer_Attend FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Road_Class.csv" INTO TABLE  Road_Class FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Road_Type.csv" INTO TABLE  Road_Type FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Junction_Detail.csv" INTO TABLE  Junction_Detail FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Junction_Control.csv" INTO TABLE  Junction_Control FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Casualty_Class.csv" INTO TABLE  Casualty_Class FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Casualty_Severity.csv" INTO TABLE  Casualty_Severity FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Casualty_Type.csv" INTO TABLE  Casualty_Type FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Ped_Location.csv" INTO TABLE  Ped_Location FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Ped_Movement.csv" INTO TABLE  Ped_Movement FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Age_Band.csv" INTO TABLE  Age_Band FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Junction_Location.csv" INTO TABLE  Junction_Location FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Sex_of_Driver.csv" INTO TABLE  Sex_of_Driver FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Vehicle_Location.csv" INTO TABLE  Vehicle_Location FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Vehicle_Manoeuvre.csv" INTO TABLE  Vehicle_Manoeuvre FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/lookup-tables/Vehicle_Type.csv" INTO TABLE  Vehicle_Type FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;


-- big data

-- Since 2014 the data is provided in one big file Stats19_Data_2005-2014.zip
-- Unzipped; TRUNCATE TABLE contains these 3:

LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/core-tables/Accidents0514.csv" INTO TABLE Accident FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES
(`Accident_Index`,`Location_Easting_OSGR`,`Location_Northing_OSGR`,`Longitude`,`Latitude`,`Police_Force`,`Accident_Severity`,`Number_of_Vehicles`,`Number_of_Casualties`,@varDate,`Day_of_Week`,`Time`,`Local_Authority_District`,`Local_Authority_Highway`,`First_Road_Class`,`First_Road_Number`,`Road_Type`,`Speed_limit`,`Junction_Detail`,`Junction_Control`,`Second_Road_Class`,`Second_Road_Number`,`Ped_Cross_Human`,`Ped_Cross_Physical`,`Light_Conditions`,`Weather_Conditions`,`Road_Surface_Conditions`,`Special_Conditions_at_Site`,`Carriageway_Hazards`,`Urban_Rural`,`Police_Officer_Attend`,`LSOA_of_Accident_Location`)
set `Date` = STR_TO_DATE(@varDate, '%d/%m/%Y');
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/core-tables/Casualties0514.csv" INTO TABLE Casualty FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE "C:/Users/mattt_000/Documents/GitHub/Stats19MySQL/data/core-tables/Vehicles0514.csv" INTO TABLE Vehicle FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES;

INSERT INTO accident_location
  (select a.Accident_Index as Accident_Index,
  PointFromText(CONCAT('POINT(',Location_Easting_OSGR,' ',Location_Northing_OSGR,')')) as Geom
  from accident a)
  ;
