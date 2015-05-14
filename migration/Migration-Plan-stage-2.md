# Introduction
#Project Background


# UPDATE *section* on *property_details_land* Table

```
update property_details_land as a
   inner join (
      select SUBSTRING_INDEX(SUBSTRING_INDEX(land_pin, "-", 4), "-", -1) as property_section,land_pin from property_details_land
   ) as b on a.land_pin=b.land_pin
set a.section = b.property_section;
```

# UPDATE *province_uuid* on *property_details_land* Table
```
UPDATE `property_details_land` SET location_province_uuid= '6c3f0c2e-b6eb-280c-7a93-19ee8c96deff' WHERE 1
```

# UPDATE *municipality_uuid* on *property_details_land* Table
```
UPDATE `property_details_land` SET location_municipality_uuid= 'b46c922b-0d99-7722-23fe-6b496157eff2' WHERE 1
```

# UPDATE *location_brgy_uuid* on *property_details_land* Table

# Use *SELECT* first to test the query
```
SELECT d.uuid AS brgyuuid, e.* FROM property_details_land as e
   inner join (
      select SUBSTRING_INDEX(SUBSTRING_INDEX(land_pin, "-", 3), "-", -1) as property_brgy, land_pin from property_details_land
   ) as b on e.land_pin=b.land_pin
   inner join (
      select location,index_num from pin_library_barangay 
   ) as c on property_brgy=c.index_num
   inner join (
      select uuid,name,city_uuid from location_barangay 
   ) as d on c.location=d.name AND d.city_uuid = 'b46c922b-0d99-7722-23fe-6b496157eff2'
LIMIT 10
```

# Now, use *UPDATE* to execute the query
```
update property_details_land as e
   inner join (
      select SUBSTRING_INDEX(SUBSTRING_INDEX(land_pin, "-", 3), "-", -1) as property_brgy, land_pin from property_details_land
   ) as b on e.land_pin=b.land_pin
   inner join (
      select location,index_num from pin_library_barangay 
   ) as c on property_brgy=c.index_num
   inner join (
      select uuid,name,city_uuid from location_barangay 
   ) as d on c.location=d.name AND d.city_uuid = 'b46c922b-0d99-7722-23fe-6b496157eff2'
set e.location_brgy_uuid = d.uuid;
```

# Property Owner

```
INSERT INTO property_owner (uuid, property_uuid, owner_uuid, owner_type)
SELECT uuid(), uuid, main_owner_uuid, 'OM' AS owner_type
FROM properties
```

# Property Building Details

```
SELECT uuid(), main_faas_bldg.cpin, main_faas_bldg.carpn, main_faas_bldg.carpn, addl_fbldg_stru.cstructype, addl_fbldg_stru.cclass, main_faas_bldg.cbldgpermit, main_faas_bldg.istoreys, main_faas_bldg.dtconsdt, main_faas_bldg.dtcompdt,
main_faas_bldg.dtoccudt, main_faas_bldg.fgrndflrarea, main_faas_bldg.ftbldgarea,
CONCAT(`main_faas_bldg`.`cmemo1`, '|', `main_faas_bldg`.`cmemo2`, '|', `main_faas_bldg`.`cmemo3`) AS memoranda
FROM main_faas_bldg JOIN addl_fbldg_stru USING (cpin) LIMIT 10
```

# TRANSACTIONS: LAND

```
INSERT INTO transactions (transactions_uuid, property_uuid, arp_no, transaction_date, status, tm_flag, tm_date, tm_head_flag, tm_head_date, aps_flag, aps_date, ah_flag, ah_date)
SELECT uuid(), properties.uuid,land_addtl_details.arp_no,
CONCAT(`land_addtl_details`.`dttransdt`, ' ', `land_addtl_details`.`ctranstm`) AS trans_datetime, 'Approved' AS status, '1' AS tm_flag, CONCAT(`land_addtl_details`.`dttransdt`, ' ', `land_addtl_details`.`ctranstm`) AS trans_datetime,  '1' AS tm_head_flag, CONCAT(`land_addtl_details`.`dttransdt`, ' ', `land_addtl_details`.`ctranstm`) AS trans_datetime, '1' AS aps_flag, CONCAT(`land_addtl_details`.`dttransdt`, ' ', `land_addtl_details`.`ctranstm`) AS trans_datetime,  '1' AS ah_flag, CONCAT(`land_addtl_details`.`dttransdt`, ' ', `land_addtl_details`.`ctranstm`) AS trans_datetime
FROM properties JOIN land_addtl_details USING (pin) WHERE properties.property_type_uuid = '3a9f736e-356a-1331-a2d0-f88191dc7a80'
```


# TRANSACTIONS: IMPROVEMENTS

```
INSERT INTO transactions (transactions_uuid, property_uuid, arp_no, transaction_date, status, tm_flag, tm_date, tm_head_flag, tm_head_date, aps_flag, aps_date, ah_flag, ah_date)
SELECT uuid(), properties.uuid,property_details_improvement.arp_no,
'' AS trans_datetime, 'Approved' AS status, '1' AS tm_flag, '' AS trans_datetime,  '1' AS tm_head_flag, '' AS trans_datetime, '1' AS aps_flag, '' AS trans_datetime,  '1' AS ah_flag, '' AS trans_datetime
FROM properties JOIN property_details_improvement ON properties.pin =  property_details_improvement.improvement_pin WHERE properties.property_type_uuid = 'dedd72f9-e30b-4592-d3de-6507aa6c27ed'
```

# TRANSACTIONS: MACHINE

```
INSERT INTO transactions (transactions_uuid, property_uuid, arp_no, transaction_date, status, tm_flag, tm_date, tm_head_flag, tm_head_date, aps_flag, aps_date, ah_flag, ah_date)
SELECT uuid(), properties.uuid,property_details_machine.arp_no,
'' AS trans_datetime, 'Approved' AS status, '1' AS tm_flag, '' AS trans_datetime,  '1' AS tm_head_flag, '' AS trans_datetime, '1' AS aps_flag, '' AS trans_datetime,  '1' AS ah_flag, '' AS trans_datetime
FROM properties JOIN property_details_machine ON properties.pin =  property_details_machine.machine_pin WHERE properties.property_type_uuid = 'e9df44e1-9ea5-a372-f7f8-7c73912ebf57'
```


## property_details_building

Query this from PHPMyAdmin

```
INSERT INTO property_details_building (uuid, building_pin, arp_no,admin_lastname,
admin_street,permit, no_storeys,
date_constructed, date_completed,date_occupied,
total_ground_floor_area,building_area,memoranda,
assessment_value,depreciation_market_val,
taxability,effectivity_date,construction_cost,cusercode,dttransdt,ctranstm)

SELECT uuid() AS uuid, `cpin` AS building_pin, `carpn` as arp_no,
    `cadminnm` as admin_lastname, `cadminaddr` as admin_street,
    `cbldgpermit` AS permit, 
    `istoreys` AS no_storeys, `dtconsdt` AS date_constructed,
    `dtcompdt` AS date_completed, `dtoccudt` AS date_occupied, 	
    `fgrndflrarea` AS total_ground_floor_area, `ftbldgarea` AS building_area,
    CONCAT(`cmemo1`, '|', `cmemo2`, '|', `cmemo3`) AS memoranda, 	
    `ftassval` AS assessment_value, `ftdepmval` AS depreciation_market_val, 	
    `ctaxability` AS taxability, `dteffdate` AS effectivity_date, `fconscost` AS construction_cost, cusercode, dttransdt, ctranstm
    FROM main_faas_bldg
```
> THEN UPDATE property_uuid
```
UPDATE property_details_building 
	SET property_uuid = (SELECT uuid FROM properties WHERE pin = building_pin LIMIT 1)
	WHERE 1
```
> THEN UPDATE land_pin
```
UPDATE property_details_building as e
   inner join (
      select SUBSTRING_INDEX(SUBSTRING_INDEX(building_pin, "-", 5), "-", -5) as land_pin, building_pin from property_details_building
   ) as b on e.building_pin=b.building_pin
set e.land_pin = b.land_pin;
```

## building_assessment

Query from PHPMyAdmin New

```
INSERT INTO building_assessment (uuid, property_uuid, building_area, depreciation_market_value, actual_use, cdetcode,
assessment_level, assessment_value, taxability, ibldgstripno)

SELECT uuid(), property_details_building.property_uuid, fbldgarea, fdepmval,
cactuse,cdetcode,fasslev,fassval,casstaxability,ibldgstripno

FROM addl_fbldg_ass JOIN property_details_building ON addl_fbldg_ass.cpin = property_details_building.building_pin
```
> THEN UPDATE actual_use based on market_value (skip this process, didn't need to. THIS is just for reference)
```
UPDATE property_assessment as e
   inner join (
      select cactualuse from ref_bldg_ass
   ) as b on e.market_value BETWEEN b.fminrange AND b.fmaxrange
set e.land_pin = b.land_pin;
```


## property_assessment for BUILDING

Query from PHPMyAdmin New

```
INSERT INTO property_assessment (uuid, property_uuid, `desc`, marketvalue,
                                 assessment_level, assessed_value, taxability,
                                 tax_effectivity)

SELECT uuid(), property_details_building.property_uuid, 'NIKKI' AS actual_use, 
	ftdepmval, 'NIKKILEVEL' AS assessment_level, 
	ftassval, ctaxability, 
	dteffdate

FROM main_faas_bldg JOIN property_details_building ON main_faas_bldg.cpin = property_details_building.building_pin
```
> THEN UPDATE actual_use and market_value based on past billing
```
UPDATE property_assessment as e
   inner join (
      SELECT property_details_building.property_uuid, hist_billing.cpin, hist_billing.fmval1, hist_billing.cactuse, hist_billing.itaxyear FROM `property_details_building` JOIN hist_billing ON property_details_building.building_pin = hist_billing.cpin where hist_billing.itaxyear = (SELECT MAX(a.itaxyear) FROM hist_billing a WHERE a.cpin = property_details_building.building_pin LIMIT 1)
   ) as b USING(property_uuid)
set e.desc = b.cactuse, e.marketvalue = b.fmval1;
```

> THEN UPDATE actual_use and market_value based on current billing (if there is a record)
```
UPDATE property_assessment as e
   inner join (
      SELECT property_details_building.property_uuid, main_billing.cpin, main_billing.fmval1, main_billing.cactuse, main_billing.itaxyear FROM `property_details_building` JOIN main_billing ON property_details_building.building_pin = main_billing.cpin where main_billing.itaxyear = (SELECT MAX(a.itaxyear) FROM main_billing a WHERE a.cpin = property_details_building.building_pin LIMIT 1)
   ) as b USING(property_uuid)
set e.desc = b.cactuse, e.marketvalue = b.fmval1;
```

### Building Appraisal

Query from PHPMyAdmin New

```
INSERT INTO building_appraisal (uuid, property_uuid, total_market_value, total_adjustments,
        adjustment_market_value, building_age, depreciation_rate,depreciation_value,
        imultstruc, icompparts, ioverridedepval, ibldgstrip, istructchar)

SELECT uuid(), property_details_building.property_uuid, ftotmval,ftotadjustments, 
	fadjmv, fbldgage,fdeprate,fdepval, imultstruc, icompparts, ioverridedepval, ibldgstrip, istructchar

FROM addl_fbldg_app JOIN property_details_building ON addl_fbldg_app.cpin = property_details_building.building_pin
```

### Building Components

Query from PHPMyAdmin New

```
INSERT INTO building_components (uuid, property_uuid, ccompcode, area,
        component_price, adjustment_value,actual_use)

SELECT uuid(), property_details_building.property_uuid, ccompcode,farea, 
	fpercentprice, fadjustment,cactuse

FROM addl_fbldg_comp JOIN property_details_building ON addl_fbldg_comp.cpin = property_details_building.building_pin
```

> THEN UPDATE component_uuid tru ccompcode

```
UPDATE building_components 
	SET component_uuid = (SELECT uuid FROM src_building_components WHERE compcode = ccompcode LIMIT 1)
	WHERE 1
```

### Building Structure

Query from PHPMyAdmin New

```
INSERT INTO building_structure (uuid, property_uuid, area,cstructype,cclass,cbldgtype,
        ioverridemval, unit_value,market_value,actual_use,istrucno,fperccomp)

SELECT uuid(), property_details_building.property_uuid,farea, cstructype,cclass,cbldgtype,
	ioverridemval,fuval,fmval,cactuse,istrucno,fperccomp

FROM addl_fbldg_stru JOIN property_details_building ON addl_fbldg_stru.cpin = property_details_building.building_pin
```

> THEN UPDATE structure_type_uuid tru cstructype

```
UPDATE building_structure 
	SET structure_type_uuid = (SELECT uuid FROM src_building_structure WHERE structure_code = cstructype LIMIT 1)
	WHERE 1
```

> THEN UPDATE structure_type_uuid tru cclass

```
UPDATE building_structure 
	SET class_uuid = (SELECT uuid FROM  src_building_class WHERE building_class = cclass LIMIT 1)
	WHERE 1
```

> THEN UPDATE structure_type_uuid tru cbldgtype

```
UPDATE building_structure 
	SET building_type_uuid = (SELECT uuid FROM src_building_type WHERE type_code = cbldgtype LIMIT 1)
	WHERE 1
```

# Machine

## Machine Property Details

Query from PHPMyAdmin New

```
INSERT INTO property_details_machine (uuid, property_uuid, arp_no,machine_pin, bldg_pin,administrator_lastname,administrator_street,memoranda,
actual_use,assessment_level,total_assessed_value,
depreciated_market_value,taxability,tax_effectivity)

SELECT uuid(), properties.uuid,carpn,cpin, cbldgpin,cadminnm,cadminaddr,
    CONCAT(`cmemo1`, '|', `cmemo2`, '|', `cmemo3`) AS memoranda,
cactuse,fasslev,ftassval,ftdepmval,ctaxability,dteffdate

FROM main_faas_mach JOIN properties ON main_faas_mach.cpin = properties.pin
```
> THEN UPDATE land_pin
```
UPDATE property_details_machine as e
   inner join (
      select SUBSTRING_INDEX(SUBSTRING_INDEX(machine_pin, "-", 5), "-", -5) as land_pin, machine_pin from property_details_machine
   ) as b on e.machine_pin=b.machine_pin
set e.land_pin = b.land_pin;
```

#### MAchine Appraisal

Query from PHPMyAdmin New

```
INSERT INTO machine_appraisal (uuid, property_uuid, machine_condition,kind, brand_model_no,hp_capacity,date_acquired,date_installed,date_operated,
qty,acquisition_cost,estimated_life,remaining_life,market_value,
years_used, depreciation_rate,depreciation,depreciated_market_value)

SELECT uuid(), property_details_machine.property_uuid,ccondition,cmachkind, cbrandmodel,ccapacity,dtacquired,dtinstalled,dtoperated,
iqty,facqrepcost,iestlife,iremlife,fmarketvalue,
iyearsused,fdeprate,fdep,fdepmv

FROM addl_fmach_app JOIN property_details_machine ON addl_fmach_app.cpin = property_details_machine.machine_pin
```


# Improvements

## Improvements property_details_improvement

> UPDATE land_pin
```
UPDATE property_details_improvement as e
   inner join (
      select SUBSTRING_INDEX(SUBSTRING_INDEX(improvement_pin, "-", 5), "-", -5) as land_pin, improvement_pin from property_details_improvement
   ) as b on e.improvement_pin=b.improvement_pin
set e.land_pin = b.land_pin;
```
## property_assessment Improvements

Query from PHPMyAdmin New

```
INSERT INTO property_assessment (uuid, property_uuid, `desc`,
                                 assessment_level, assessed_value, taxability,
                                 tax_effectivity, marketvalue, migrate_flag)

SELECT uuid(), property_details_improvement.property_uuid, property_details_improvement.actual_use, 
property_details_improvement.assessment_level,  property_details_improvement.assessment_value, property_details_improvement.taxability,  property_details_improvement.tax_effectivity, property_details_improvement.total_market_val, 
5 AS migrate_flag

FROM property_details_improvement WHERE 1
```
#
#



# Check and update assessed_value of tax dec

> For Tax Dec without Rev
```
UPDATE property_tax_declaration as e
   inner join (
      select SUM(assessed_value) AS assessed_value,land_pin from property_details_land GROUP BY property_uuid
   ) as b on e.property_index_no=b.land_pin
set e.assessed_value = b.assessed_value WHERE e.id = '123456990';
```
> For Tax Dec without Rev BUILDING
```
UPDATE property_tax_declaration as e
   inner join (
      select SUM(assessment_value) AS assessment_value,building_pin from property_details_building GROUP BY property_uuid
   ) as b on e.property_index_no=b.building_pin
set e.assessed_value = b.assessment_value WHERE e.id = '123456991';
```
> For 2010-2014 record
```
UPDATE property_tax_declaration as e
   inner join (
      select SUM(fassval) AS fassval,cpin,iyear from ref_trans_prov GROUP BY cpin,iyear
   ) as b on e.property_index_no=b.cpin AND e.effectivity_year = b.iyear
set e.assessed_value = b.fassval;
```
> For 2015 and UP record
```
UPDATE property_tax_declaration as e
   inner join (
      select SUM(fassval) AS fassval,cpin,iyear,cclass from ref_trans_prov where iyear = '2014' GROUP BY cpin,iyear
   ) as b on e.property_index_no=b.cpin
set e.assessed_value = b.fassval WHERE e.effectivity_year > '2014' AND b.cclass=SUBSTRING(e.actual_use,1,1);
```

# UPDATE TAX DEC: BUILDING

```
UPDATE property_tax_declaration 
  JOIN (
    property_details_building 
      JOIN (properties JOIN owner ON (properties.main_owner_uuid = owner.uuid))
    ON (properties.pin = property_details_building.building_pin)
  )
  ON (property_tax_declaration.property_index_no = property_details_building.building_pin)
SET
    property_kind_uuid = properties.property_type_uuid, 
    owner_lastname = owner.lastname, 
    owner_firstname = owner.firstname, 
    owner_middlename = owner.middlename, 
    owner_street = owner.street, 
    owner_barangay_uuid = owner.brgy_uuid, 
    owner_municipality_uuid = owner.municipality_uuid,
    owner_province_uuid = owner.province_uuid, 
    owner_barangay_name = owner.brgy_name, 
    owner_municipality_name = owner.municipality_name,
    owner_province_name = owner.province_name, 
    owner_telno = owner.telno,
    property_tax_declaration.arp_no = property_details_building.arp_no,
    property_tax_declaration.administrator_lastname = property_details_building.admin_lastname,
    property_tax_declaration.administrator_middlename = property_details_building.admin_middlename,
    property_tax_declaration.administrator_firstname = property_details_building.admin_firstname,
    property_tax_declaration.administrator_street = property_details_building.admin_street,
    property_tax_declaration.administrator_barangay_uuid = property_details_building.admin_barangay_uuid,
    property_tax_declaration.administrator_municipality_uuid = property_details_building.admin_municipality_uuid,
    property_tax_declaration.administrator_province_uuid = property_details_building.admin_province_uuid,
    property_tax_declaration.administrator_barangay_name = property_details_building.admin_barangay_name,
    property_tax_declaration.administrator_municipality_name = property_details_building.admin_municipality_name,
    property_tax_declaration.administrator_province_name = property_details_building.admin_province_name
```
```
UPDATE property_tax_declaration 
  JOIN (
    property_details_building
      JOIN
	property_details_land
    	ON (property_details_land.land_pin = property_details_building.land_pin)
  )
  ON (property_tax_declaration.property_index_no = property_details_building.building_pin)
SET
    oct_tct = property_details_land.oct_tct_no,
    property_tax_declaration.survey_no = property_details_land.survey_no,
    property_tax_declaration.lot_no = property_details_land.lot_no,
    property_tax_declaration.blk_no = property_details_land.blk_no,
    north = property_details_land.boundary_north,
    south = property_details_land.boundary_south,
    east = property_details_land.boundary_east,
    west = property_details_land.boundary_west,
    loc_barangay_uuid = property_details_land.location_brgy_uuid,
    loc_municipality_uuid = property_details_land.location_municipality_uuid,
    loc_province_uuid = property_details_land.location_province_uuid,
    loc_street = property_details_land.location_address
```

THIS IS THE NEXT
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

```
UPDATE property_tax_declaration
	SET actual_use = (SELECT cactuse FROM main_billing WHERE cpin = property_index_no AND itaxyear = effectivity_year LIMIT 1)
	WHERE 1
```
> UPDATE remaining empty actual_use from history billing
```
UPDATE property_tax_declaration
	SET actual_use = (SELECT cactuse FROM hist_billing WHERE cpin = property_index_no AND itaxyear = effectivity_year LIMIT 1)
	WHERE actual_use IS NULL
```
> THEN Insert delinquencies for BUILDING
```
INSERT INTO `delinquencies`
  (uuid, property_uuid, property_index_no, taxdec_uuid, effectivity_year, effectivity_date, paid)

SELECT 
  uuid(), property_details_building.property_uuid, property_index_no, property_tax_declaration.uuid, effectivity_year, dated, updated_flag
FROM property_tax_declaration 
JOIN property_details_building 
ON (property_details_building.building_pin = property_tax_declaration.property_index_no)
```
> THEN ADD BUILDING Transactions
# TRANSACTIONS: BUILDING

```
INSERT INTO transactions (transactions_uuid, property_uuid, arp_no, transaction_date, status, tm_flag, tm_date, tm_head_flag, tm_head_date, aps_flag, aps_date, ah_flag, ah_date)
SELECT uuid(), properties.uuid,property_details_building.arp_no,
CONCAT(`property_details_building`.`dttransdt`, ' ', `property_details_building`.`ctranstm`) AS trans_datetime, 'Approved' AS status, '1' AS tm_flag, CONCAT(`property_details_building`.`dttransdt`, ' ', `property_details_building`.`ctranstm`) AS trans_datetime,  '1' AS tm_head_flag, CONCAT(`property_details_building`.`dttransdt`, ' ', `property_details_building`.`ctranstm`) AS trans_datetime, '1' AS aps_flag, CONCAT(`property_details_building`.`dttransdt`, ' ', `property_details_building`.`ctranstm`) AS trans_datetime,  '1' AS ah_flag, CONCAT(`property_details_building`.`dttransdt`, ' ', `property_details_building`.`ctranstm`) AS trans_datetime
FROM properties JOIN property_details_building ON properties.pin = property_details_building.building_pin WHERE properties.property_type_uuid = 'aa1016a4-28f1-fbf1-d247-7c25df775e77'
```

> For 2010-2014 record
```
UPDATE payment_details as e
   inner join (
      select CONCAT(`payment_date`, ' ', `ctmencoded`) AS payment_date_time from payment_details
   ) as b on e.uuid=b.uuid
set e.payment_date_time = b.payment_date_time;
```

> Debit / Credit
```
INSERT INTO payment_balance (uuid, date, account_number, corseries, or_number, amount_paid, amount_balance, ctranstype)

SELECT uuid(), dttransdate,cowncode,corseries,corn,ftaxdebit,ftaxcredit,ctranstype
FROM ref_tax_credit
```
> THEN UPDATE owner_uuid tru account_number
```
UPDATE payment_balance a
	SET a.owner_uuid = (SELECT b.uuid FROM owner b WHERE a.account_number = b.account_number LIMIT 1)
	WHERE 1
```
> THEN UPDATE  type (debit / credit)
```
UPDATE payment_balance
SET
  type = CASE WHEN amount_paid = '0' THEN 'credit' ELSE 'debit' END
```

```
UPDATE property_tax_declaration 
  JOIN (properties 
    JOIN property_assessment ON (properties.uuid = property_assessment.property_uuid)
  )
  ON (property_tax_declaration.property_index_no = properties.pin)
SET
  taxable = CASE WHEN property_assessment.taxability = 'T' THEN 1 ELSE 0 END,
  exempt = CASE WHEN property_assessment.taxability = 'E' THEN 1 ELSE 0 END  
WHERE property_tax_declaration.taxable IS NULL AND property_tax_declaration.exempt IS NULL
```

# Update Barangay of Migrated Tax Dec (needed for reports)
```
update property_tax_declaration as e
   inner join (
      select SUBSTRING_INDEX(SUBSTRING_INDEX(property_index_no, "-", 3), "-", -1) as property_brgy, property_index_no from property_tax_declaration
   ) as b on e.property_index_no=b.property_index_no
   inner join (
      select location,index_num from pin_library_barangay 
   ) as c on property_brgy=c.index_num
   inner join (
      select uuid,name,city_uuid from location_barangay 
   ) as d on c.location=d.name AND d.city_uuid = 'b46c922b-0d99-7722-23fe-6b496157eff2'
set e.loc_barangay_uuid = d.uuid
WHERE e.loc_barangay_uuid IS NULL;
```