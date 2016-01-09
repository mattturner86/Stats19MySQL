/* 
 * Some example queries.
 *
 * TEST CASE accident_index=2011350754511 cycle/car serious 
 *           accident_index=2011350551611 ped/bus fatal
 */

 -- Use stats19 database
 USE stats19;
 
-- The test cases
SELECT *
FROM accident_vehicle_label a
WHERE a.accident_index in ('2011350754511','2011350551611');

SELECT *
FROM accidentv a
WHERE a.accident_index in ('2011350754511','2011350551611');

SELECT *
FROM casualtyv a
WHERE a.accident_index in ('2011350754511','2011350551611');

SELECT *
FROM vehiclev a
WHERE a.accident_index in ('2011350754511','2011350551611');

-- Accidents (with location) for GIS use for a single Local Authority (Sheffield)

SELECT a.Accident_Index, al.g
FROM accident a
LEFT JOIN accident_location al ON al.accident_index = a.accident_index
INNER JOIN local_authority_highway lah ON a.local_authority_highway = lah.code and lah.label = "Sheffield"
;

-- Location of accidents involving a bicycle, extra fields are year, highway authority and if a death was involved
 select al.*, a.date, year(a.date), a.local_authority_highway, NOT(ISNULL(d.Accident_INDEX)) as DeathInvolved
 from cycle_accident ca
 INNER JOIN accident_location al ON al.Accident_Index = ca.Accident_Index
 INNER JOIN accident a ON a.Accident_Index = ca.Accident_Index
 LEFT JOIN death d ON d.Accident_Index = ca.Accident_Index;
 
-- Summary of Single Vehicle Accidents involving pedestiran injury by vehicle type and year and severity
SELECT year(a.Date) as year, vt.label as Vehicle, a_sev.label as Severity, count(1)
FROM single_vehicle_pedestrian_injury svpi, accident a, vehicle v, vehicle_type vt, accident_severity a_sev
WHERE a.Accident_Index = svpi.Accident_Index
 AND v.Accident_Index = svpi.Accident_Index
 AND vt.code = v.vehicle_type
 and a_sev.code = a.accident_severity
GROUP BY year(a.Date), vt.label, a_sev.label
;
-- Detail of Single Vehicle Accidents involving pedestiran injury
SELECT a.*, year(a.Date) as year, vt.label as Vehicle, vv.*
FROM single_vehicle_pedestrian_injury svpi,
 accident a,
 vehicle v,
 vehicle_type vt,
 accident_severity a_sev,
 vehiclev vv
WHERE a.Accident_Index = svpi.Accident_Index
 AND v.Accident_Index = svpi.Accident_Index
 AND vt.code = v.vehicle_type
 AND a_sev.code = a.accident_severity
 #AND vt.label = 'Pedal cycle'
 AND vv.accident_index = a.accident_index
;