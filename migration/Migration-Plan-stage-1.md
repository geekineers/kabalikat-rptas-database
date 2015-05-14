# Tables to Consider

## user

View created

```
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`%` 
    SQL SECURITY DEFINER
VIEW `users` AS
    select distinct
        `hist_payment`.`cusercode` AS `usercode`,
        NULL AS `uuid`,
        lcase(concat(`hist_payment`.`cusercode`,
                        '@8layertech.com')) AS `email`,
        '' AS `password`,
        concat(ucase(substr(`hist_payment`.`cusercode`, 1, 1)),
                lcase(substr(`hist_payment`.`cusercode`, 2))) AS `firstname`,
        '' AS `middlename`,
        '' AS `lastname`,
        '' AS `address`,
        0 AS `user_type_id`,
        1 AS `active`
    from
        `hist_payment`
    order by `hist_payment`.`cusercode`
```

## owners
Insert query from ref_owners

```
INSERT INTO owner(uuid, lastname, middlename, firstname, street, municipality_uuid, province_uuid,
brgy_name, municipality_name, province_name, zip, active, owncode, account_number)

SELECT uuid() AS uuid, cln AS lastname, cmi AS middlename, cfn AS firstname, caddr AS street, 
(SELECT uuid FROM location_municipality WHERE name = cmun LIMIT 1) AS municipality_uuid,
    (SELECT uuid FROM location_provinces WHERE name = cprov LIMIT 1) AS province_uuid,
cbgy AS brgy_name, UPPER(cmun) AS municipality_name, UPPER(cprov) AS province_name,
czip AS zip, 1 AS active, cowncode AS owncode, cowncode AS account_number
FROM `ref_owners`
```

## property

create view

```
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`%` 
    SQL SECURITY DEFINER
VIEW `properties` AS
    select 
        `main_faas_bldg`.`cpin` AS `pin`,
        'aa1016a4-28f1-fbf1-d247-7c25df775e77' AS `property_type_uuid`,
        `main_faas_bldg`.`cowncode` AS `cowncode`
    from
        `main_faas_bldg` 
    union select 
        `main_faas_impr`.`cpin` AS `pin`,
        'dedd72f9-e30b-4592-d3de-6507aa6c27ed' AS `property_type_uuid`,
        `main_faas_impr`.`cowncode` AS `cowncode`
    from
        `main_faas_impr` 
    union select 
        `main_faas_land`.`cpin` AS `pin`,
        '3a9f736e-356a-1331-a2d0-f88191dc7a80' AS `property_type_uuid`,
        `main_faas_land`.`cowncode` AS `cowncode`
    from
        `main_faas_land` 
    union select 
        `main_faas_mach`.`cpin` AS `pin`,
        'e9df44e1-9ea5-a372-f7f8-7c73912ebf57' AS `property_type_uuid`,
        `main_faas_mach`.`cowncode` AS `cowncode`
    from
        `main_faas_mach`
```

## Select Insert Properties

```
INSERT INTO properties(uuid, pin, property_type_uuid, main_owner_uuid, migrate_flag, active, tempowncode)

SELECT uuid() AS uuid, pin, property_type_uuid,
(SELECT uuid FROM owner WHERE owncode = cowncode LIMIT 1) AS main_owner_uuid,
1 AS migrate_flag, 1 AS active, cowncode
FROM `properties_3`
```

## property_details_land

Query this from PHPMyAdmin

```
INSERT INTO property_details_land(uuid, land_pin, arp_no, oct_tct_no, lot_no, blk_no, survey_no,
cowncode, administrator_lastname, administrator_street, boundary_north, boundary_east, boundary_south, boundary_west,
taxability, tax_effectivity, assessed_value, usercode, memoranda, appraisal_base_market_value)

SELECT uuid() AS uuid, `cpin` AS land_pin, `carpn` as arp_no, `ctct` AS oct_tct_no, 
    `clotn` AS lot_no, `cblkn` AS blk_no, `csurvey` AS survey_no, '' AS `cowncode`, 
    `cadminnm` AS administrator_lastname, `cadminaddr` AS administrator_street, 
    `cnorth` AS boundary_north, `ceast` AS boundary_east, `csouth` AS boundary_south, 
    `cwest` AS boundary_west, `ctaxability` AS taxability, `dteffdate` AS tax_effectivity, 
    `ftassval` AS assessed_value, `cusercode` AS usercode, 
    CONCAT(`cmemo1`, '|', `cmemo2`, '|', `cmemo3`) AS memoranda, 
    `ftmval` AS appraisal_base_market_value FROM main_faas_land
```

Then export to excel, import onto the new table but this time with the columns stated above. Then fill up property_uuid by the land_pin

```
UPDATE property_details_land 
	SET property_uuid = (SELECT uuid FROM properties WHERE pin = land_pin LIMIT 1)
	WHERE 1
```

## land_addtl_details

Query from PHPMyAdmin Old

```
INSERT INTO land_addtl_details(pin, arp_no, ctranscode, clformat, ftarea, ftmval,
ftadjval, ftassval, cexemptcode, cpownnm, fpassval, cppin, cparpn, fpmval, 
	cpprovpin, cptdn, cappnm, dtappdt, dttransdt, ctranstm, dtbtdate, 
	cisprovtrans, cprovpin, czonecode, fttreeval, imount)

SELECT cpin AS pin, carpn AS arp_no, ctranscode, clformat, ftarea, ftmval, 
	ftadjval, ftassval, cexemptcode, cpownnm, fpassval, cppin, cparpn, fpmval, 
	cpprovpin, cptdn, cappnm, dtappdt, dttransdt, ctranstm, dtbtdate, 
	cisprovtrans, cprovpin, czonecode, fttreeval, imount 
FROM main_faas_land
```
Then export to CSV, then insert into land_addtl_details.

## land_assessment

Query from PHPMyAdmin Old

```
SELECT cpin,cactuse,cdetcode,fasslev,fassval,casstaxability 
FROM addl_fland_ass
```

Then create a `pin` column inside land_assessment temprarily.

Then drop the `uuid` primary key.

Then import the CSV with the following order:

```
pin,actual_use,cdetcode,assessment_level,assessed_value,casstaxability
```

Then create UUIDs for the table.

```
UPDATE land_assessment SET uuid = uuid() WHERE 1;
UPDATE land_assessment 
	SET property_uuid = 
	(SELECT uuid FROM properties 
	WHERE properties.pin = land_assessment.pin LIMIT 1) WHERE 1;
UPDATE land_assessment 
	SET market_value = 
	(SELECT ftmval FROM land_addtl_details 
	WHERE land_addtl_details.pin = land_assessment.pin LIMIT 1) WHERE 1;
```

Return primary key on uuid, then remove the pin column.

## land_appraisal

Query from PHPMyAdmin Old

```
SELECT cpin,cclass,csubclass,farea,cadjcode,fadjval,fuval,fmval,fadjarea 
FROM addl_fland_app
```

Then create a `pin` column inside land_assessment temprarily. Then two more columns varchar(255) on `cclass` and `csublcass`

Then drop the `uuid` primary key.

Then import the CSV with the following order:

```
pin,cclass,csubclass,area,cadjcode,fadjval,unit_value,base_market_value,fadjarea
```

Then create UUIDs for the table.

```
UPDATE land_appraisal 
	SET uuid = uuid(),
		property_uuid = 
			(SELECT uuid FROM properties 
			WHERE properties.pin = land_appraisal.pin LIMIT 1),
		classification = 
			(SELECT uuid FROM classification 
			WHERE classification.name = cclass LIMIT 1)
WHERE 1
```

Return primary key on uuid, then remove the pin and classification columns.

## property_assessment

Query from PHPMyAdmin New

```
INSERT INTO property_assessment (uuid, property_uuid, `desc`, marketvalue,
                                 assessment_level, assessed_value, taxability,
                                 tax_effectivity)

SELECT uuid(), property_details_land.property_uuid, land_assessment.actual_use, 
	land_assessment.market_value, land_assessment.assessment_level, 
	land_assessment.assessed_value, property_details_land.taxability, 
	property_details_land.tax_effectivity

FROM property_details_land JOIN land_assessment USING (property_uuid) WHERE 1
```

## transactions

## property_tax_declaration

### Phase 1: From main_billing

#### LAND

```
INSERT INTO geekneer_Iesia5eavaiT5bie.property_tax_declaration 
	(uuid,property_index_no,effectivity_quarter, dated, 
	effectivity_year, assessed_value, market_value)

SELECT uuid(), rpt_sto.main_billing.cpin AS property_index_no, 
	rpt_sto.main_billing.iqtr AS effectivity_quarter, 
	CONCAT(rpt_sto.main_billing.itaxyear, "-01-01") AS dated, 
	rpt_sto.main_billing.itaxyear AS effectivity_year, 
	(	rpt_sto.main_billing.fassval1 + rpt_sto.main_billing.fassval2 + 
		rpt_sto.main_billing.fassval3 + rpt_sto.main_billing.fassval4) AS assessed_value, 
	rpt_sto.main_billing.fmval1 AS market_value  
FROM rpt_sto.main_billing WHERE 1
```

Then update

```
UPDATE property_tax_declaration 
  JOIN (
    property_details_land 
      JOIN (properties JOIN owner ON (properties.main_owner_uuid = owner.uuid))
    ON (properties.pin = property_details_land.land_pin)
  )
  ON (property_tax_declaration.property_index_no = property_details_land.land_pin)
SET
    property_kind_uuid = properties.property_type_uuid, 
    owner_lastname = owner.lastname, 
    owner_firstname = owner.firstname, 
    owner_middlename = owner.middlename, 
    owner_street = owner.street, 
    owner_barangay_uuid = owner.brgy_uuid, 
    owner_municipality_uuid = owner.municipality_uuid,
    owner_province_uuid = owner.province_uuid, 
    owner_telno = owner.telno,
    oct_tct = property_details_land.oct_tct_no,
    property_tax_declaration.survey_no = property_details_land.survey_no,
    property_tax_declaration.lot_no = property_details_land.lot_no,
    property_tax_declaration.blk_no = property_details_land.blk_no,
    north = property_details_land.boundary_north,
    south = property_details_land.boundary_south,
    east = property_details_land.boundary_east,
    west = property_details_land.boundary_west,
    property_tax_declaration.arp_no = property_details_land.arp_no,
    loc_barangay_uuid = property_details_land.location_brgy_uuid,
    loc_municipality_uuid = property_details_land.location_municipality_uuid,
    loc_province_uuid = property_details_land.location_province_uuid,
    property_tax_declaration.administrator_lastname = property_details_land.administrator_lastname,
    property_tax_declaration.administrator_middlename = property_details_land.administrator_middlename,
    property_tax_declaration.administrator_firstname = property_details_land.administrator_firstname,
    property_tax_declaration.administrator_telno = property_details_land.administrator_telno,
    property_tax_declaration.administrator_street = property_details_land.administrator_street,
    property_tax_declaration.administrator_barangay_uuid = property_details_land.administrator_barangay_uuid,
    property_tax_declaration.administrator_municipality_uuid = property_details_land.administrator_municipality_uuid,
    property_tax_declaration.administrator_province_uuid = property_details_land.administrator_province_uuid,
    loc_street = property_details_land.location_address
```

```
UPDATE property_tax_declaration 
  JOIN (property_details_land 
    JOIN land_assessment USING (property_uuid) 
    JOIN property_assessment USING (property_uuid)
    JOIN land_appraisal USING (property_uuid)
  )
  ON (property_tax_declaration.property_index_no = property_details_land.land_pin)
SET
  property_tax_declaration.assessment_level = land_assessment.assessment_level,
  property_tax_declaration.actual_use = land_assessment.actual_use,
  property_tax_declaration.area = land_appraisal.area,
  property_tax_declaration.classification_uuid = land_appraisal.classification, 
  taxable = CASE WHEN property_assessment.taxability = 'T' THEN 1 ELSE 0 END,
  exempt = CASE WHEN property_assessment.taxability = 'E' THEN 1 ELSE 0 END  
```

#### MACHINE

Just UPDATE the property_tax_declaration for machine

```
UPDATE property_tax_declaration 
  JOIN (
    property_details_land 
      JOIN (properties
        JOIN owner ON (properties.main_owner_uuid = owner.uuid)
        JOIN property_details_machine ON (property_details_machine.property_uuid = properties.uuid)
      )
    ON (properties.pin = property_details_land.land_pin)
  )
  ON (property_tax_declaration.property_index_no = property_details_land.land_pin)
SET
    property_kind_uuid = properties.property_type_uuid, 
    owner_lastname = owner.lastname, 
    owner_firstname = owner.firstname, 
    owner_middlename = owner.middlename, 
    owner_street = owner.street, 
    owner_barangay_uuid = owner.brgy_uuid, 
    owner_municipality_uuid = owner.municipality_uuid,
    owner_province_uuid = owner.province_uuid, 
    owner_telno = owner.telno,
    oct_tct = property_details_land.oct_tct_no,
    property_tax_declaration.survey_no = property_details_land.survey_no,
    property_tax_declaration.lot_no = property_details_land.lot_no,
    property_tax_declaration.blk_no = property_details_land.blk_no,
    north = property_details_land.boundary_north,
    south = property_details_land.boundary_south,
    east = property_details_land.boundary_east,
    west = property_details_land.boundary_west,
    property_tax_declaration.arp_no = property_details_machine.arp_no,
    property_tax_declaration.administrator_lastname = property_details_machine.administrator_lastname,
    property_tax_declaration.administrator_middlename = property_details_machine.administrator_middlename,
    property_tax_declaration.administrator_firstname = property_details_machine.administrator_firstname,
    property_tax_declaration.administrator_telno = property_details_machine.administrator_telno,
    property_tax_declaration.administrator_street = property_details_machine.administrator_street,
    property_tax_declaration.administrator_barangay_uuid = property_details_machine.administrator_barangay_uuid,
    property_tax_declaration.administrator_municipality_uuid = property_details_machine.administrator_municipality_uuid,
    property_tax_declaration.administrator_province_uuid = property_details_machine.administrator_province_uuid
```

```
UPDATE property_tax_declaration 
  JOIN (property_details_land 
    JOIN land_assessment USING (property_uuid) 
    JOIN property_assessment USING (property_uuid)
    JOIN land_appraisal USING (property_uuid)
  )
  ON (property_tax_declaration.property_index_no = property_details_land.land_pin)
SET
  property_tax_declaration.assessment_level = land_assessment.assessment_level,
  property_tax_declaration.actual_use = land_assessment.actual_use,
  property_tax_declaration.area = land_appraisal.area,
  property_tax_declaration.classification_uuid = land_appraisal.classification, 
  taxable = CASE WHEN property_assessment.taxability = 'T' THEN 1 ELSE 0 END,
  exempt = CASE WHEN property_assessment.taxability = 'E' THEN 1 ELSE 0 END  
```


### Phase 2: From hist_billing

```
INSERT INTO geekneer_Iesia5eavaiT5bie.property_tax_declaration 
	(uuid,property_index_no,effectivity_quarter, dated, 
	effectivity_year, assessed_value, market_value, updated_flag)

SELECT uuid(), rpt_sto.hist_billing.cpin AS property_index_no, 
	rpt_sto.hist_billing.iqtr AS effectivity_quarter, 
	CONCAT(rpt_sto.hist_billing.itaxyear, "-01-01") AS dated, 
	rpt_sto.hist_billing.itaxyear AS effectivity_year, 
	(	rpt_sto.hist_billing.fassval1 + rpt_sto.hist_billing.fassval2 + 
		rpt_sto.hist_billing.fassval3 + rpt_sto.hist_billing.fassval4) AS assessed_value, 
	rpt_sto.hist_billing.fmval1 AS market_value, '1' AS updated_flag 
FROM rpt_sto.hist_billing WHERE 1
```

Then update

```
UPDATE property_tax_declaration 
  JOIN (
    property_details_land 
      JOIN (properties JOIN owner ON (properties.main_owner_uuid = owner.uuid))
    ON (properties.pin = property_details_land.land_pin)
  )
  ON (property_tax_declaration.property_index_no = property_details_land.land_pin)
SET
    property_kind_uuid = properties.property_type_uuid, 
    owner_lastname = owner.lastname, 
    owner_firstname = owner.firstname, 
    owner_middlename = owner.middlename, 
    owner_street = owner.street, 
    owner_barangay_uuid = owner.brgy_uuid, 
    owner_municipality_uuid = owner.municipality_uuid,
    owner_province_uuid = owner.province_uuid, 
    owner_telno = owner.telno,
    oct_tct = property_details_land.oct_tct_no,
    property_tax_declaration.survey_no = property_details_land.survey_no,
    property_tax_declaration.lot_no = property_details_land.lot_no,
    property_tax_declaration.blk_no = property_details_land.blk_no,
    north = property_details_land.boundary_north,
    south = property_details_land.boundary_south,
    east = property_details_land.boundary_east,
    west = property_details_land.boundary_west,
    property_tax_declaration.arp_no = property_details_land.arp_no,
    loc_barangay_uuid = property_details_land.location_brgy_uuid,
    loc_municipality_uuid = property_details_land.location_municipality_uuid,
    loc_province_uuid = property_details_land.location_province_uuid,
    property_tax_declaration.administrator_lastname = property_details_land.administrator_lastname,
    property_tax_declaration.administrator_middlename = property_details_land.administrator_middlename,
    property_tax_declaration.administrator_firstname = property_details_land.administrator_firstname,
    property_tax_declaration.administrator_telno = property_details_land.administrator_telno,
    property_tax_declaration.administrator_street = property_details_land.administrator_street,
    property_tax_declaration.administrator_barangay_uuid = property_details_land.administrator_barangay_uuid,
    property_tax_declaration.administrator_municipality_uuid = property_details_land.administrator_municipality_uuid,
    property_tax_declaration.administrator_province_uuid = property_details_land.administrator_province_uuid,
    loc_street = property_details_land.location_address
```

```
UPDATE property_tax_declaration 
  JOIN (property_details_land 
    JOIN land_assessment USING (property_uuid) 
    JOIN property_assessment USING (property_uuid)
    JOIN land_appraisal USING (property_uuid)
  )
  ON (property_tax_declaration.property_index_no = property_details_land.land_pin)
SET
  property_tax_declaration.assessment_level = land_assessment.assessment_level,
  property_tax_declaration.actual_use = land_assessment.actual_use,
  property_tax_declaration.area = land_appraisal.area,
  property_tax_declaration.classification_uuid = land_appraisal.classification, 
  taxable = CASE WHEN property_assessment.taxability = 'T' THEN 1 ELSE 0 END,
  exempt = CASE WHEN property_assessment.taxability = 'E' THEN 1 ELSE 0 END  
```


# payment_details

First, insert from old DB

```
INSERT INTO geekneer_Iesia5eavaiT5bie.payment_details (
     geekneer_Iesia5eavaiT5bie.payment_details.uuid,
     geekneer_Iesia5eavaiT5bie.payment_details.cusercode,
     geekneer_Iesia5eavaiT5bie.payment_details.pin,
     geekneer_Iesia5eavaiT5bie.payment_details.arp_no,
     geekneer_Iesia5eavaiT5bie.payment_details.term,
     geekneer_Iesia5eavaiT5bie.payment_details.ctmencoded,
     geekneer_Iesia5eavaiT5bie.payment_details.dtencoded,
     geekneer_Iesia5eavaiT5bie.payment_details.iqtr,
     geekneer_Iesia5eavaiT5bie.payment_details.inqtr,
     geekneer_Iesia5eavaiT5bie.payment_details.account_number,
     geekneer_Iesia5eavaiT5bie.payment_details.or_no,
     geekneer_Iesia5eavaiT5bie.payment_details.payment_date,
     geekneer_Iesia5eavaiT5bie.payment_details.assessment_value,
     geekneer_Iesia5eavaiT5bie.payment_details.amount,
     geekneer_Iesia5eavaiT5bie.payment_details.penalty,
     geekneer_Iesia5eavaiT5bie.payment_details.discount,
     geekneer_Iesia5eavaiT5bie.payment_details.status,
     geekneer_Iesia5eavaiT5bie.payment_details.type
)

SELECT
     uuid(),
     rpt_sto.hist_payment.cusercode,
     rpt_sto.hist_payment.cpin,
     rpt_sto.hist_payment.carpn,
     rpt_sto.hist_payment.itaxyear,
     rpt_sto.hist_payment.ctmencoded,
     rpt_sto.hist_payment.dtencoded,
     rpt_sto.hist_payment.iqtr,
     rpt_sto.hist_payment.inqtr,
     rpt_sto.hist_payment.cowncode,
     rpt_sto.hist_payment.corn,
     rpt_sto.hist_payment.cordt,
     rpt_sto.hist_payment.fassval,
     rpt_sto.hist_payment.fbsctax + 
     rpt_sto.hist_payment.fseftax,
     rpt_sto.hist_payment.fbscpen +
     rpt_sto.hist_payment.fsefpen,
     rpt_sto.hist_payment.fbscdis +
     rpt_sto.hist_payment.fsefdis,
     'publish',
     CASE WHEN rpt_sto.hist_payment.csource = 'POS' THEN 'posting'
          WHEN rpt_sto.hist_payment.csource = 'OFL' THEN 'offline'
          WHEN rpt_sto.hist_payment.csource = 'ONL' THEN 'online'
          ELSE ''
     END
FROM rpt_sto.hist_payment
```

Then update the following:

```
UPDATE payment_details SET 
  qtr = inqtr, qtr_from = iqtr, qtr_to = inqtr 
WHERE iqtr = '1';

UPDATE payment_details SET 
  qtr = 3, qtr_from = 2, qtr_to = 3 
WHERE iqtr = inqtr AND iqtr = '2';

UPDATE payment_details SET 
  qtr = 2, qtr_from = 2, qtr_to = 2 
WHERE inqtr = '1' AND iqtr = '2';

UPDATE payment_details SET 
  qtr = 4, qtr_from = 2, qtr_to = 4 
WHERE inqtr = '3' AND iqtr = '2';

UPDATE payment_details SET 
  qtr = 3, qtr_from = 3, qtr_to = 3 
WHERE inqtr = '1' AND iqtr = '3';

UPDATE payment_details SET 
  qtr = 4, qtr_from = 3, qtr_to = 4 
WHERE inqtr = '2' AND iqtr = '3';

UPDATE payment_details SET 
  qtr = 4, qtr_from = 4, qtr_to = 4
WHERE iqtr = '4';
```

```
UPDATE payment_details JOIN properties USING (pin)
    SET property_uuid = properties.uuid
```

# delinquencies

Do this from New DB

```
INSERT INTO `delinquencies`
  (uuid, property_uuid, property_index_no, taxdec_uuid, effectivity_year, effectivity_date, paid)

SELECT 
  uuid(), property_details_land.property_uuid, property_index_no, property_tax_declaration.uuid, effectivity_year, dated, updated_flag
FROM property_tax_declaration 
JOIN property_details_land 
ON (property_details_land.land_pin = property_tax_declaration.property_index_no)
```

# DELINQUENCY BUILDING
```
INSERT INTO `delinquencies`
  (uuid, property_uuid, property_index_no, taxdec_uuid, effectivity_year, effectivity_date, paid)

SELECT 
  uuid(), property_details_building.property_uuid, property_index_no, property_tax_declaration.uuid, effectivity_year, dated, updated_flag
FROM property_tax_declaration 
JOIN property_details_building 
ON (property_details_building.building_pin = property_tax_declaration.property_index_no)
```


# DELINQUENCY IMPROVEMENTS april
```
INSERT INTO `delinquencies`
  (uuid, property_uuid, property_index_no, taxdec_uuid, effectivity_year, effectivity_date, paid)

SELECT 
  uuid(), property_details_improvement.property_uuid, property_index_no, property_tax_declaration.uuid, effectivity_year, dated, updated_flag
FROM property_tax_declaration 
JOIN property_details_improvement 
ON (property_details_improvement.improvement_pin = property_tax_declaration.property_index_no)
```

# DELINQUENCY MACHINE
```
INSERT INTO `delinquencies`
  (uuid, property_uuid, property_index_no, taxdec_uuid, effectivity_year, effectivity_date, paid)

SELECT 
  uuid(), property_details_machine.property_uuid, property_index_no, property_tax_declaration.uuid, effectivity_year, dated, updated_flag
FROM property_tax_declaration 
JOIN property_details_machine 
ON (property_details_machine.machine_pin = property_tax_declaration.property_index_no)
```

## UPDATE Taxability MACHINE
```
UPDATE property_details_machine as e
   inner join (
      select ctaxability, cpin from main_faas_mach
   ) as b on e.machine_pin=b.cpin
set e.taxability = b.ctaxability;
```

## property_assessment MACHINE

Query from PHPMyAdmin New

```
INSERT INTO property_assessment (uuid, property_uuid, `desc`,
                                 assessment_level, assessed_value, taxability,
                                 tax_effectivity, migrate_flag)

SELECT uuid(), property_details_machine.property_uuid, property_details_machine.actual_use, 
property_details_machine.assessment_level, 
	property_details_machine.total_assessed_value, property_details_machine.taxability, 
	property_details_machine.tax_effectivity,4 AS migrate_flag

FROM property_details_machine WHERE 1
```

> UPDATE property assessment of Machine
```
UPDATE property_assessment as e
   inner join (
      select SUM(market_value) AS market_value,property_uuid from machine_appraisal GROUP BY property_uuid
   ) as b on e.property_uuid=b.property_uuid
set e.marketvalue = b.market_value WHERE e.migrate_flag = '4';
```