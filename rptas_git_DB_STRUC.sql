-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2015 at 04:55 PM
-- Server version: 10.0.16-MariaDB-log
-- PHP Version: 5.6.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rptas_git`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `uuid` varchar(80) NOT NULL,
  `name` varchar(300) NOT NULL,
  `bankcode` int(11) unsigned NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing_deleted`
--

CREATE TABLE IF NOT EXISTS `billing_deleted` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `delinq_id` int(11) unsigned NOT NULL,
  `uuid` varchar(80) NOT NULL,
  `arp_no` varchar(50) NOT NULL,
  `property_index_no` varchar(50) NOT NULL,
  `owner_lastname` varchar(255) DEFAULT NULL,
  `owner_firstname` varchar(255) DEFAULT NULL,
  `owner_middlename` varchar(255) DEFAULT NULL,
  `owner_street` varchar(255) DEFAULT NULL,
  `owner_barangay_uuid` varchar(80) DEFAULT NULL,
  `owner_municipality_uuid` varchar(80) DEFAULT NULL,
  `owner_province_uuid` varchar(80) DEFAULT NULL,
  `owner_barangay_name` varchar(255) DEFAULT NULL,
  `owner_municipality_name` varchar(255) DEFAULT NULL,
  `owner_province_name` varchar(255) DEFAULT NULL,
  `owner_telno` varchar(20) DEFAULT NULL,
  `administrator_lastname` varchar(255) DEFAULT NULL,
  `administrator_firstname` varchar(255) DEFAULT NULL,
  `administrator_middlename` varchar(255) DEFAULT NULL,
  `administrator_telno` varchar(20) DEFAULT NULL,
  `administrator_street` varchar(255) DEFAULT NULL,
  `administrator_barangay_uuid` varchar(80) DEFAULT NULL,
  `administrator_municipality_uuid` varchar(80) DEFAULT NULL,
  `administrator_province_uuid` varchar(80) DEFAULT NULL,
  `administrator_barangay_name` varchar(255) DEFAULT NULL,
  `administrator_municipality_name` varchar(255) DEFAULT NULL,
  `administrator_province_name` varchar(255) DEFAULT NULL,
  `loc_street` varchar(255) DEFAULT NULL,
  `loc_barangay_uuid` varchar(80) DEFAULT NULL,
  `loc_municipality_uuid` varchar(80) DEFAULT NULL,
  `loc_province_uuid` varchar(80) DEFAULT NULL,
  `oct_tct` varchar(255) DEFAULT NULL,
  `survey_no` varchar(255) DEFAULT NULL,
  `cct_cloa_no` varchar(255) DEFAULT NULL,
  `lot_no` varchar(255) DEFAULT NULL,
  `dated` date NOT NULL,
  `blk_no` varchar(255) DEFAULT NULL,
  `north` varchar(255) DEFAULT NULL,
  `south` varchar(255) DEFAULT NULL,
  `east` varchar(255) DEFAULT NULL,
  `west` varchar(255) DEFAULT NULL,
  `property_kind_uuid` varchar(80) DEFAULT NULL,
  `classification_uuid` varchar(80) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `market_value` varchar(255) DEFAULT NULL,
  `actual_use` varchar(255) DEFAULT NULL,
  `assessment_level` varchar(255) DEFAULT NULL,
  `assessed_value` varchar(255) DEFAULT NULL,
  `total_assessed_value` varchar(255) DEFAULT NULL,
  `taxable` tinyint(2) DEFAULT NULL,
  `exempt` tinyint(2) DEFAULT NULL,
  `effectivity_quarter` tinyint(2) DEFAULT NULL,
  `effectivity_year` year(4) DEFAULT NULL,
  `recommended_by` varchar(255) DEFAULT NULL,
  `approved_by` varchar(255) DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `memoranda` text,
  `active` tinyint(2) DEFAULT NULL,
  `date_applied` datetime DEFAULT NULL,
  `updated_flag` tinyint(1) NOT NULL DEFAULT '0',
  `user_name` varchar(100) NOT NULL,
  `user_uuid` varchar(80) NOT NULL,
  `datetime_removed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing_update`
--

CREATE TABLE IF NOT EXISTS `billing_update` (
  `taxdec_uuid` int(11) NOT NULL,
  `prev_amount` decimal(15,2) NOT NULL,
  `new_amount` decimal(15,2) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_uuid` varchar(80) NOT NULL,
  `datetime_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bldg_addtl_details`
--

CREATE TABLE IF NOT EXISTS `bldg_addtl_details` (
  `property_uuid` varchar(80) DEFAULT NULL,
  `market_value` decimal(15,2) DEFAULT NULL,
  `total_adjustments` decimal(15,2) DEFAULT NULL,
  `adjusted_market_value` decimal(15,2) DEFAULT NULL,
  `building_age` int(4) DEFAULT NULL,
  `depreciation_rate` int(4) DEFAULT NULL,
  `deprciation_value` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bldg_structural_char`
--

CREATE TABLE IF NOT EXISTS `bldg_structural_char` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `foundation1` varchar(255) NOT NULL,
  `foundation2` varchar(255) NOT NULL,
  `columns1` varchar(255) NOT NULL,
  `columns2` varchar(255) NOT NULL,
  `beams1` varchar(255) NOT NULL,
  `beams2` varchar(255) NOT NULL,
  `truss_framing1` varchar(255) NOT NULL,
  `truss_framing2` varchar(255) NOT NULL,
  `roof1` varchar(255) NOT NULL,
  `roof2` varchar(255) NOT NULL,
  `exterior_walls1` varchar(255) NOT NULL,
  `exterior_walls2` varchar(255) NOT NULL,
  `flooring1` varchar(255) NOT NULL,
  `flooring2` varchar(255) NOT NULL,
  `doors1` varchar(255) NOT NULL,
  `doors2` varchar(255) NOT NULL,
  `ceiling1` varchar(255) NOT NULL,
  `ceiling2` varchar(255) NOT NULL,
  `windows1` varchar(255) NOT NULL,
  `windows2` varchar(255) NOT NULL,
  `stairs1` varchar(255) NOT NULL,
  `stairs2` varchar(255) NOT NULL,
  `partition1` varchar(255) NOT NULL,
  `partition2` varchar(255) NOT NULL,
  `wall_finish1` varchar(255) NOT NULL,
  `wall_finish2` varchar(255) NOT NULL,
  `electrical1` varchar(255) NOT NULL,
  `electrical2` varchar(255) NOT NULL,
  `toilet_bath1` varchar(255) NOT NULL,
  `toilet_bath2` varchar(255) NOT NULL,
  `plumbing_sewer1` varchar(255) NOT NULL,
  `plumbing_sewer2` varchar(255) NOT NULL,
  `fixtures1` varchar(255) NOT NULL,
  `fixtures2` varchar(255) NOT NULL,
  `others1` varchar(255) NOT NULL,
  `others2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bldg_structure`
--

CREATE TABLE IF NOT EXISTS `bldg_structure` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `area` int(15) DEFAULT NULL,
  `structure_type_uuid` varchar(80) DEFAULT NULL,
  `class` varchar(80) DEFAULT NULL,
  `bldg_type_uuid` varchar(80) DEFAULT NULL,
  `unit_value` decimal(15,2) DEFAULT NULL,
  `market_value` decimal(15,2) DEFAULT NULL,
  `actual_use` varchar(100) DEFAULT NULL,
  `istrucno` smallint(6) DEFAULT NULL,
  `fperccomp` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bldg_types_classes`
--

CREATE TABLE IF NOT EXISTS `bldg_types_classes` (
  `uuid` varchar(80) CHARACTER SET utf8 NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `class` varchar(255) CHARACTER SET utf8 NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `building_appraisal`
--

CREATE TABLE IF NOT EXISTS `building_appraisal` (
  `uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `property_uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `total_market_value` decimal(15,2) DEFAULT NULL,
  `total_adjustments` decimal(15,2) DEFAULT NULL,
  `adjustment_market_value` decimal(15,2) DEFAULT NULL,
  `building_age` int(10) DEFAULT NULL,
  `depreciation_rate` int(15) DEFAULT NULL,
  `depreciation_value` decimal(15,2) DEFAULT NULL,
  `imultstruc` int(11) DEFAULT NULL,
  `icompparts` int(11) DEFAULT NULL,
  `ioverridedepval` int(11) DEFAULT NULL,
  `ibldgstrip` int(11) DEFAULT NULL,
  `istructchar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `building_assessment`
--

CREATE TABLE IF NOT EXISTS `building_assessment` (
  `uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `property_uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `building_area` int(15) DEFAULT '0',
  `depreciation_market_value` decimal(15,2) DEFAULT NULL,
  `actual_use` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cdetcode` char(3) CHARACTER SET latin1 DEFAULT NULL,
  `assessment_level` int(15) DEFAULT NULL,
  `assessment_value` decimal(15,2) DEFAULT '0.00',
  `taxability` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `ibldgstripno` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `building_components`
--

CREATE TABLE IF NOT EXISTS `building_components` (
  `uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `property_uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `component_uuid` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `area` int(15) DEFAULT NULL,
  `component_price` decimal(15,2) DEFAULT NULL,
  `adjustment_value` decimal(15,2) DEFAULT NULL,
  `actual_use` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ccompcode` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `building_structure`
--

CREATE TABLE IF NOT EXISTS `building_structure` (
  `uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `property_uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `area` int(15) DEFAULT NULL,
  `structure_type_uuid` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `class_uuid` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `building_type_uuid` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `ioverridemval` int(6) DEFAULT NULL,
  `unit_value` decimal(15,2) DEFAULT NULL,
  `market_value` decimal(15,2) DEFAULT NULL,
  `actual_use` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `istrucno` smallint(6) NOT NULL,
  `fperccomp` float DEFAULT NULL,
  `cstructype` varchar(10) DEFAULT NULL,
  `cclass` varchar(10) DEFAULT NULL,
  `cbldgtype` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classification`
--

CREATE TABLE IF NOT EXISTS `classification` (
  `uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `level` tinyint(3) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classification_sub_type`
--

CREATE TABLE IF NOT EXISTS `classification_sub_type` (
  `uuid` varchar(80) NOT NULL,
  `class_type_uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classification_type`
--

CREATE TABLE IF NOT EXISTS `classification_type` (
  `uuid` varchar(80) NOT NULL,
  `classification_uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delinquencies`
--

CREATE TABLE IF NOT EXISTS `delinquencies` (
  `id` int(11) unsigned NOT NULL,
  `id_index` int(11) unsigned NOT NULL,
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `property_index_no` varchar(30) NOT NULL,
  `taxdec_uuid` varchar(80) NOT NULL,
  `effectivity_year` year(4) NOT NULL,
  `effectivity_date` date NOT NULL,
  `first_notice` int(11) NOT NULL,
  `second_notice` int(11) NOT NULL,
  `third_notice` int(11) NOT NULL,
  `provincial_levi` int(11) NOT NULL,
  `cancelled` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `updated_flag` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=517472 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `improvements`
--

CREATE TABLE IF NOT EXISTS `improvements` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `improvement_details` varchar(255) DEFAULT NULL,
  `improvement_quantity` int(11) NOT NULL,
  `improvement_unit_value` varchar(100) NOT NULL,
  `improvement_base_market_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `improvements_type`
--

CREATE TABLE IF NOT EXISTS `improvements_type` (
  `uuid` varchar(80) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `description` text,
  `value` decimal(15,2) DEFAULT NULL,
  `percentage` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `improvement_appraisal`
--

CREATE TABLE IF NOT EXISTS `improvement_appraisal` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `type_uuid` varchar(80) DEFAULT NULL,
  `base_value` decimal(15,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `market_value` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `land_addtl_details`
--

CREATE TABLE IF NOT EXISTS `land_addtl_details` (
  `pin` varchar(100) DEFAULT NULL,
  `arp_no` varchar(100) DEFAULT NULL,
  `cappnm` varchar(200) DEFAULT NULL,
  `cppin` int(11) DEFAULT NULL,
  `cparpn` int(11) DEFAULT NULL,
  `dtbtdate` date DEFAULT NULL,
  `ctranscode` varchar(100) DEFAULT NULL,
  `clformat` varchar(10) DEFAULT NULL,
  `ftarea` varchar(100) DEFAULT NULL,
  `ftmval` decimal(15,2) DEFAULT NULL,
  `ftadjval` decimal(15,2) DEFAULT NULL,
  `ftassval` decimal(15,2) DEFAULT NULL,
  `fpassval` decimal(15,2) DEFAULT NULL,
  `fpmval` decimal(15,2) DEFAULT NULL,
  `cexemptcode` char(3) DEFAULT NULL,
  `cpownnm` char(150) DEFAULT NULL,
  `migrate_flag` tinyint(3) unsigned DEFAULT '0',
  `cpprovpin` char(20) DEFAULT NULL,
  `cptdn` char(20) DEFAULT NULL,
  `dtappdt` date DEFAULT NULL,
  `dttransdt` date DEFAULT NULL,
  `ctranstm` char(8) DEFAULT NULL,
  `cisprovtrans` char(1) DEFAULT NULL,
  `cprovpin` char(15) DEFAULT NULL,
  `czonecode` char(3) DEFAULT NULL,
  `fttreeval` float DEFAULT NULL,
  `imount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `land_adjustment_factor`
--

CREATE TABLE IF NOT EXISTS `land_adjustment_factor` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `base_market_value` decimal(15,2) NOT NULL,
  `adjustment_factor` varchar(255) NOT NULL,
  `adjustment_percent` int(3) NOT NULL,
  `value` decimal(15,2) NOT NULL,
  `market_value` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `land_adj_factors`
--

CREATE TABLE IF NOT EXISTS `land_adj_factors` (
  `uuid` varchar(80) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `code` char(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` char(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `adjustment_factor` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `land_appraisal`
--

CREATE TABLE IF NOT EXISTS `land_appraisal` (
  `uuid` varchar(80) NOT NULL,
  `csubclass` varchar(255) DEFAULT NULL,
  `property_uuid` varchar(80) DEFAULT NULL,
  `classification` varchar(80) DEFAULT NULL,
  `sub_class` varchar(255) DEFAULT NULL,
  `area` varchar(255) NOT NULL,
  `unit_value` decimal(15,2) NOT NULL,
  `base_market_value` decimal(15,2) NOT NULL,
  `cadjcode` char(3) DEFAULT NULL,
  `fadjval` float(13,2) DEFAULT NULL,
  `fadjarea` float DEFAULT NULL,
  `migrate_flag` tinyint(1) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `land_assessment`
--

CREATE TABLE IF NOT EXISTS `land_assessment` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) DEFAULT NULL,
  `market_value` decimal(15,2) NOT NULL,
  `actual_use` varchar(255) NOT NULL,
  `assessment_level` varchar(100) NOT NULL,
  `assessed_value` decimal(15,2) NOT NULL,
  `cdetcode` char(3) DEFAULT NULL,
  `casstaxability` char(1) DEFAULT NULL,
  `migrate_flag` tinyint(1) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `land_depreciation_improvements`
--

CREATE TABLE IF NOT EXISTS `land_depreciation_improvements` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `base_market_value` decimal(15,2) NOT NULL,
  `depreciation_rate` int(4) NOT NULL,
  `accumulated_depreciation` decimal(15,2) NOT NULL,
  `depreciated_value` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `land_other_improvement`
--

CREATE TABLE IF NOT EXISTS `land_other_improvement` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `total_number` int(4) NOT NULL,
  `description` varchar(255) NOT NULL,
  `unit_value` decimal(15,2) NOT NULL,
  `base_market_value` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_barangay`
--

CREATE TABLE IF NOT EXISTS `location_barangay` (
  `uuid` varchar(80) NOT NULL,
  `city_uuid` varchar(80) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `coordinates` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_municipality`
--

CREATE TABLE IF NOT EXISTS `location_municipality` (
  `uuid` varchar(80) NOT NULL,
  `region_uuid` varchar(80) NOT NULL,
  `province_uuid` varchar(80) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `zipcode` varchar(5) NOT NULL,
  `coordinates` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_provinces`
--

CREATE TABLE IF NOT EXISTS `location_provinces` (
  `uuid` varchar(80) NOT NULL,
  `region_uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `coordinates` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_region`
--

CREATE TABLE IF NOT EXISTS `location_region` (
  `uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `coordinates` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `person_involve` varchar(80) NOT NULL,
  `type_of_process` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `machine_appraisal`
--

CREATE TABLE IF NOT EXISTS `machine_appraisal` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `machine_condition` varchar(100) NOT NULL,
  `kind` varchar(100) NOT NULL,
  `brand_model_no` varchar(100) NOT NULL,
  `hp_capacity` varchar(100) NOT NULL,
  `date_acquired` date NOT NULL,
  `date_installed` date NOT NULL,
  `date_operated` date NOT NULL,
  `qty` int(11) NOT NULL,
  `acquisition_cost` decimal(15,2) NOT NULL,
  `additional_cost` decimal(15,2) NOT NULL,
  `estimated_life` int(11) NOT NULL,
  `remaining_life` int(11) NOT NULL,
  `market_value` decimal(15,2) NOT NULL,
  `years_used` int(11) NOT NULL,
  `depreciation_rate` int(11) NOT NULL,
  `depreciation` decimal(15,2) NOT NULL,
  `depreciated_market_value` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `uuid` varchar(80) NOT NULL,
  `module` text NOT NULL,
  `hasview` tinyint(4) NOT NULL DEFAULT '0',
  `hasadd` tinyint(4) NOT NULL DEFAULT '0',
  `hasedit` tinyint(4) NOT NULL DEFAULT '0',
  `hasdelete` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mortgage`
--

CREATE TABLE IF NOT EXISTS `mortgage` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `oct_tct` varchar(255) NOT NULL,
  `memoranda` text NOT NULL,
  `user_uuid` varchar(80) NOT NULL,
  `datetime_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `or_marked_paid`
--

CREATE TABLE IF NOT EXISTS `or_marked_paid` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `property_index_no` varchar(30) NOT NULL,
  `or_no` varchar(50) NOT NULL,
  `amount_of_payment` varchar(50) NOT NULL,
  `date_of_payment` datetime NOT NULL,
  `new_memoranda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `uuid` varchar(80) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `telno` varchar(100) NOT NULL,
  `brgy_uuid` varchar(80) DEFAULT NULL,
  `municipality_uuid` varchar(80) DEFAULT NULL,
  `province_uuid` varchar(80) DEFAULT NULL,
  `brgy_name` varchar(255) DEFAULT NULL,
  `municipality_name` varchar(255) DEFAULT NULL,
  `province_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `datetime_created` datetime NOT NULL,
  `active` varchar(1) NOT NULL,
  `account_number` int(7) NOT NULL,
  `owncode` int(11) unsigned NOT NULL,
  `grouping_uuid` varchar(80) DEFAULT NULL,
  `migrate_flag` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=47302 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owner_groups`
--

CREATE TABLE IF NOT EXISTS `owner_groups` (
  `uuid` varchar(80) NOT NULL,
  `group_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parent_pin`
--

CREATE TABLE IF NOT EXISTS `parent_pin` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `datetime_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_balance`
--

CREATE TABLE IF NOT EXISTS `payment_balance` (
  `uuid` varchar(80) NOT NULL,
  `date` datetime NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `owner_uuid` varchar(80) NOT NULL,
  `check_number` varchar(100) NOT NULL,
  `or_number` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `amount_due` float NOT NULL,
  `amount_paid` float NOT NULL,
  `amount_balance` float NOT NULL,
  `corseries` varchar(255) DEFAULT NULL,
  `ctranstype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_check`
--

CREATE TABLE IF NOT EXISTS `payment_check` (
  `uuid` varchar(80) NOT NULL,
  `or_no` varchar(100) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `account_name` varchar(200) NOT NULL,
  `check_date` date NOT NULL,
  `check_no` varchar(100) NOT NULL,
  `check_amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE IF NOT EXISTS `payment_details` (
  `id` int(11) unsigned NOT NULL,
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) DEFAULT NULL,
  `user_uuid` varchar(80) DEFAULT NULL,
  `pin` varchar(100) NOT NULL,
  `arp_no` varchar(1000) NOT NULL,
  `account_number` int(7) NOT NULL,
  `type` varchar(100) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `or_serial_uuid` varchar(80) DEFAULT NULL,
  `or_no` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `iqtr` int(5) unsigned NOT NULL,
  `inqtr` int(5) unsigned NOT NULL,
  `qtr` int(5) unsigned NOT NULL,
  `qtr_from` varchar(50) NOT NULL,
  `qtr_to` varchar(50) NOT NULL,
  `discount` decimal(15,2) NOT NULL,
  `penalty` varchar(80) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `assessment_value` decimal(15,2) NOT NULL,
  `payment_date_old` date NOT NULL,
  `payment_date` datetime NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `memoranda` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `actual_use` varchar(50) DEFAULT NULL,
  `date_of_cancellation` datetime NOT NULL,
  `reason_of_cancel` text NOT NULL,
  `backtax` tinyint(1) NOT NULL DEFAULT '0',
  `backtax_due` date NOT NULL,
  `migrate_flag` tinyint(1) NOT NULL DEFAULT '0',
  `update_migrate_flag` int(11) unsigned NOT NULL,
  `ctmencoded` varchar(80) DEFAULT NULL,
  `dtencoded` date DEFAULT NULL,
  `cusercode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `physical_change`
--

CREATE TABLE IF NOT EXISTS `physical_change` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `details` varchar(255) NOT NULL,
  `quotation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_history`
--

CREATE TABLE IF NOT EXISTS `pin_history` (
  `uuid` varchar(80) NOT NULL,
  `pin` varchar(80) NOT NULL,
  `old_pin` varchar(80) NOT NULL,
  `parent_pin` varchar(80) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library`
--

CREATE TABLE IF NOT EXISTS `pin_library` (
  `uuid` varchar(80) NOT NULL,
  `index_no` varchar(80) NOT NULL,
  `location` varchar(20) NOT NULL,
  `region` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library_barangay`
--

CREATE TABLE IF NOT EXISTS `pin_library_barangay` (
  `uuid` varchar(80) NOT NULL,
  `index_num` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `municipality_uuid` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library_city`
--

CREATE TABLE IF NOT EXISTS `pin_library_city` (
  `uuid` varchar(80) NOT NULL,
  `index_num` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `region_uuid` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library_municipality`
--

CREATE TABLE IF NOT EXISTS `pin_library_municipality` (
  `uuid` varchar(80) NOT NULL,
  `index_num` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `province_uuid` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library_province`
--

CREATE TABLE IF NOT EXISTS `pin_library_province` (
  `uuid` varchar(80) NOT NULL,
  `index_num` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `region_uuid` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library_section`
--

CREATE TABLE IF NOT EXISTS `pin_library_section` (
  `uuid` varchar(80) NOT NULL,
  `index_num` int(3) unsigned zerofill NOT NULL,
  `human_name` varchar(50) NOT NULL,
  `barangay_uuid` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proc_requirements`
--

CREATE TABLE IF NOT EXISTS `proc_requirements` (
  `uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) unsigned DEFAULT '0',
  `id_index` int(11) unsigned NOT NULL DEFAULT '0',
  `uuid` varchar(80) DEFAULT NULL,
  `pin` varchar(100) NOT NULL,
  `property_type_uuid` varchar(80) NOT NULL,
  `main_owner_uuid` varchar(80) DEFAULT NULL,
  `migrate_flag` tinyint(1) unsigned DEFAULT '0',
  `tempowncode` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_assessment`
--

CREATE TABLE IF NOT EXISTS `property_assessment` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `marketvalue` varchar(100) NOT NULL,
  `assessment_level` varchar(100) NOT NULL,
  `assessed_value` varchar(100) NOT NULL,
  `taxability` varchar(100) NOT NULL,
  `tax_effectivity` varchar(100) NOT NULL,
  `appraised_by` varchar(100) NOT NULL,
  `appraised_date` date NOT NULL,
  `assessed_by` varchar(100) NOT NULL,
  `assessed_date` date NOT NULL,
  `rec_approval` varchar(100) NOT NULL,
  `rec_approval_date` date NOT NULL,
  `approved` varchar(100) NOT NULL,
  `approved_date` date NOT NULL,
  `migrate_flag` tinyint(1) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_backtaxes`
--

CREATE TABLE IF NOT EXISTS `property_backtaxes` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `assessed_value` decimal(15,2) NOT NULL,
  `due_date` date NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_details_building`
--

CREATE TABLE IF NOT EXISTS `property_details_building` (
  `uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `property_uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `land_pin` varchar(100) CHARACTER SET latin1 NOT NULL,
  `building_pin` varchar(100) CHARACTER SET latin1 NOT NULL,
  `arp_no` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `admin_lastname` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `admin_firstname` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `admin_middlename` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `admin_province_uuid` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `admin_municipality_uuid` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `admin_barangay_uuid` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `admin_barangay_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `admin_municipality_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `admin_province_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `admin_street` text CHARACTER SET latin1,
  `permit` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `no_storeys` int(11) DEFAULT NULL,
  `date_constructed` date DEFAULT NULL,
  `date_completed` date DEFAULT NULL,
  `date_occupied` date DEFAULT NULL,
  `total_ground_floor_area` int(15) DEFAULT NULL,
  `building_area` int(15) DEFAULT NULL,
  `assessment_value` decimal(15,2) DEFAULT NULL,
  `total_market_value` decimal(15,2) DEFAULT NULL,
  `total_adjusted_market_value` decimal(15,2) DEFAULT NULL,
  `depreciation_market_val` decimal(15,2) DEFAULT NULL,
  `taxability` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `effectivity_date` date DEFAULT NULL,
  `memoranda` text CHARACTER SET latin1,
  `construction_cost` float DEFAULT NULL,
  `cusercode` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `dttransdt` date DEFAULT NULL,
  `ctranstm` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `property_details_improvement`
--

CREATE TABLE IF NOT EXISTS `property_details_improvement` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `land_pin` varchar(100) NOT NULL,
  `building_pin` varchar(100) NOT NULL,
  `improvement_pin` varchar(100) NOT NULL,
  `arp_no` varchar(100) NOT NULL,
  `account_no` int(7) NOT NULL,
  `total_area` varchar(20) NOT NULL,
  `total_market_val` decimal(15,2) NOT NULL,
  `actual_use` varchar(100) NOT NULL,
  `detail_code` varchar(3) NOT NULL,
  `assessment_value` decimal(15,2) NOT NULL,
  `assessment_level` int(3) NOT NULL,
  `memoranda` text NOT NULL,
  `taxability` varchar(1) NOT NULL,
  `exempt_code` varchar(3) NOT NULL,
  `tax_effectivity` date NOT NULL,
  `ctranscode` varchar(5) DEFAULT NULL,
  `creference` varchar(20) DEFAULT NULL,
  `cadminnm` varchar(255) DEFAULT NULL,
  `cadminaddr` varchar(255) DEFAULT NULL,
  `fuval` float DEFAULT NULL,
  `cusercode` varchar(50) DEFAULT NULL,
  `dttransdt` date DEFAULT NULL,
  `ctranstm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_details_land`
--

CREATE TABLE IF NOT EXISTS `property_details_land` (
  `uuid` varchar(80) NOT NULL,
  `land_pin` varchar(100) NOT NULL,
  `arp_no` varchar(100) NOT NULL,
  `property_uuid` varchar(80) DEFAULT NULL,
  `oct_tct_no` varchar(255) NOT NULL,
  `survey_no` varchar(80) NOT NULL,
  `lot_no` varchar(80) NOT NULL,
  `blk_no` varchar(80) NOT NULL,
  `section` varchar(100) NOT NULL,
  `location_brgy_uuid` varchar(80) DEFAULT NULL,
  `location_municipality_uuid` varchar(80) DEFAULT NULL,
  `location_province_uuid` varchar(80) DEFAULT NULL,
  `location_address` varchar(255) NOT NULL,
  `boundary_north` varchar(255) NOT NULL,
  `boundary_south` varchar(255) NOT NULL,
  `boundary_east` varchar(255) NOT NULL,
  `boundary_west` varchar(255) NOT NULL,
  `appraisal_unit_value` decimal(15,2) NOT NULL,
  `appraisal_base_market_value` decimal(15,2) NOT NULL,
  `assessed_value` decimal(15,2) NOT NULL,
  `taxability` varchar(20) NOT NULL,
  `tax_effectivity` date NOT NULL,
  `memoranda` text NOT NULL,
  `administrator_lastname` varchar(100) NOT NULL,
  `administrator_firstname` varchar(100) NOT NULL,
  `administrator_middlename` varchar(100) NOT NULL,
  `administrator_telno` varchar(50) NOT NULL,
  `administrator_street` varchar(100) NOT NULL,
  `administrator_barangay_uuid` varchar(80) DEFAULT NULL,
  `administrator_municipality_uuid` varchar(80) DEFAULT NULL,
  `administrator_province_uuid` varchar(80) DEFAULT NULL,
  `administrator_barangay_name` varchar(255) DEFAULT NULL,
  `administrator_municipality_name` varchar(255) DEFAULT NULL,
  `administrator_province_name` varchar(255) DEFAULT NULL,
  `migrate_flag` tinyint(1) unsigned DEFAULT '0',
  `cowncode` int(11) NOT NULL,
  `usercode` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_details_machine`
--

CREATE TABLE IF NOT EXISTS `property_details_machine` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `arp_no` varchar(200) NOT NULL,
  `land_pin` varchar(100) NOT NULL,
  `bldg_pin` varchar(100) NOT NULL,
  `machine_pin` varchar(100) NOT NULL,
  `administrator_lastname` varchar(100) NOT NULL,
  `administrator_firstname` varchar(100) NOT NULL,
  `administrator_middlename` varchar(100) NOT NULL,
  `administrator_street` varchar(200) NOT NULL,
  `administrator_barangay_uuid` varchar(80) NOT NULL,
  `administrator_municipality_uuid` varchar(80) NOT NULL,
  `administrator_province_uuid` varchar(80) NOT NULL,
  `memoranda` text NOT NULL,
  `actual_use` varchar(100) NOT NULL,
  `assessment_level` varchar(100) NOT NULL,
  `total_assessed_value` decimal(15,2) NOT NULL,
  `depreciated_market_value` decimal(15,2) NOT NULL,
  `taxability` varchar(1) NOT NULL,
  `tax_effectivity` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_owner`
--

CREATE TABLE IF NOT EXISTS `property_owner` (
  `uuid` varchar(80) NOT NULL,
  `owner_uuid` varchar(80) DEFAULT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `owner_type` varchar(100) NOT NULL,
  `status` varchar(1) DEFAULT NULL,
  `migrate_flag` tinyint(1) unsigned DEFAULT '0',
  `rec_legit` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_requirements`
--

CREATE TABLE IF NOT EXISTS `property_requirements` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `requirement_uuid` varchar(80) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_tax_declaration`
--

CREATE TABLE IF NOT EXISTS `property_tax_declaration` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `delinq_id` int(11) unsigned NOT NULL,
  `uuid` varchar(80) NOT NULL,
  `arp_no` varchar(50) NOT NULL,
  `property_index_no` varchar(50) NOT NULL,
  `owner_lastname` varchar(255) DEFAULT NULL,
  `owner_firstname` varchar(255) DEFAULT NULL,
  `owner_middlename` varchar(255) DEFAULT NULL,
  `owner_street` varchar(255) DEFAULT NULL,
  `owner_barangay_uuid` varchar(80) DEFAULT NULL,
  `owner_municipality_uuid` varchar(80) DEFAULT NULL,
  `owner_province_uuid` varchar(80) DEFAULT NULL,
  `owner_barangay_name` varchar(255) DEFAULT NULL,
  `owner_municipality_name` varchar(255) DEFAULT NULL,
  `owner_province_name` varchar(255) DEFAULT NULL,
  `owner_telno` varchar(20) DEFAULT NULL,
  `administrator_lastname` varchar(255) DEFAULT NULL,
  `administrator_firstname` varchar(255) DEFAULT NULL,
  `administrator_middlename` varchar(255) DEFAULT NULL,
  `administrator_telno` varchar(20) DEFAULT NULL,
  `administrator_street` varchar(255) DEFAULT NULL,
  `administrator_barangay_uuid` varchar(80) DEFAULT NULL,
  `administrator_municipality_uuid` varchar(80) DEFAULT NULL,
  `administrator_province_uuid` varchar(80) DEFAULT NULL,
  `administrator_barangay_name` varchar(255) DEFAULT NULL,
  `administrator_municipality_name` varchar(255) DEFAULT NULL,
  `administrator_province_name` varchar(255) DEFAULT NULL,
  `loc_street` varchar(255) DEFAULT NULL,
  `loc_barangay_uuid` varchar(80) DEFAULT NULL,
  `loc_municipality_uuid` varchar(80) DEFAULT NULL,
  `loc_province_uuid` varchar(80) DEFAULT NULL,
  `oct_tct` varchar(255) DEFAULT NULL,
  `survey_no` varchar(255) DEFAULT NULL,
  `cct_cloa_no` varchar(255) DEFAULT NULL,
  `lot_no` varchar(255) DEFAULT NULL,
  `dated` date NOT NULL,
  `blk_no` varchar(255) DEFAULT NULL,
  `north` varchar(255) DEFAULT NULL,
  `south` varchar(255) DEFAULT NULL,
  `east` varchar(255) DEFAULT NULL,
  `west` varchar(255) DEFAULT NULL,
  `property_kind_uuid` varchar(80) DEFAULT NULL,
  `classification_uuid` varchar(80) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `market_value` varchar(255) DEFAULT NULL,
  `actual_use` varchar(255) DEFAULT NULL,
  `assessment_level` varchar(255) DEFAULT NULL,
  `assessed_value` varchar(255) DEFAULT NULL,
  `total_assessed_value` varchar(255) DEFAULT NULL,
  `taxable` tinyint(2) DEFAULT NULL,
  `exempt` tinyint(2) DEFAULT NULL,
  `effectivity_quarter` tinyint(2) DEFAULT NULL,
  `effectivity_year` year(4) DEFAULT NULL,
  `recommended_by` varchar(255) DEFAULT NULL,
  `approved_by` varchar(255) DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `memoranda` text,
  `active` tinyint(2) DEFAULT NULL,
  `date_applied` datetime DEFAULT NULL,
  `updated_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=577890 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE IF NOT EXISTS `property_type` (
  `uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `serial_history`
--

CREATE TABLE IF NOT EXISTS `serial_history` (
  `uuid` varchar(80) NOT NULL,
  `user_uuid` varchar(80) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `src_actual_use`
--

CREATE TABLE IF NOT EXISTS `src_actual_use` (
  `uuid` varchar(80) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `src_building_assessment`
--

CREATE TABLE IF NOT EXISTS `src_building_assessment` (
  `uuid` varchar(80) NOT NULL,
  `actual_use_uuid` varchar(80) NOT NULL,
  `minimum_range` decimal(15,2) DEFAULT NULL,
  `maximum_range` decimal(15,2) DEFAULT NULL,
  `assessment_level` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `src_building_class`
--

CREATE TABLE IF NOT EXISTS `src_building_class` (
  `uuid` varchar(80) NOT NULL,
  `structure_uuid` varchar(80) NOT NULL,
  `building_class` varchar(1) DEFAULT NULL,
  `building_type_uuid` varchar(80) NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `src_building_components`
--

CREATE TABLE IF NOT EXISTS `src_building_components` (
  `uuid` varchar(80) NOT NULL,
  `compcode` varchar(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `percent_price` double DEFAULT NULL,
  `mark_percent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `src_building_dep`
--

CREATE TABLE IF NOT EXISTS `src_building_dep` (
  `uuid` varchar(80) NOT NULL,
  `structure_uuid` varchar(80) NOT NULL,
  `building_class` varchar(1) DEFAULT NULL,
  `building_type_uuid` varchar(80) NOT NULL,
  `fresidual` float DEFAULT NULL,
  `fdep1` float DEFAULT NULL,
  `fdep2` float DEFAULT NULL,
  `fdep3` float DEFAULT NULL,
  `fagefrom` int(11) DEFAULT NULL,
  `fageto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `src_building_structure`
--

CREATE TABLE IF NOT EXISTS `src_building_structure` (
  `uuid` varchar(80) NOT NULL,
  `structure_code` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `src_building_type`
--

CREATE TABLE IF NOT EXISTS `src_building_type` (
  `uuid` varchar(80) NOT NULL,
  `type_code` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `src_data_revert`
--

CREATE TABLE IF NOT EXISTS `src_data_revert` (
  `property_uuid` varchar(80) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `arp_no` varchar(100) NOT NULL,
  `owncode` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lot_no` varchar(100) NOT NULL,
  `oct_tct_no` varchar(100) NOT NULL,
  `property_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `src_delinquent_accounts`
--

CREATE TABLE IF NOT EXISTS `src_delinquent_accounts` (
  `owner_uuid` varchar(80) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `barangay_uuid` varchar(80) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `src_machine_assessment`
--

CREATE TABLE IF NOT EXISTS `src_machine_assessment` (
  `uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `actual_use_uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `rate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `src_signatories`
--

CREATE TABLE IF NOT EXISTS `src_signatories` (
  `uuid` varchar(80) NOT NULL,
  `code` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `signatory` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `transactions_uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) DEFAULT NULL,
  `transaction_number` int(100) NOT NULL,
  `transaction_type` varchar(50) DEFAULT NULL,
  `arp_no` varchar(100) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `or_no` varchar(100) NOT NULL,
  `parent_pin` varchar(100) NOT NULL,
  `status` varchar(80) NOT NULL,
  `tm_flag` varchar(2) NOT NULL,
  `tm_date` datetime NOT NULL,
  `tm_head_flag` varchar(2) NOT NULL,
  `tm_head_date` datetime NOT NULL,
  `aps_flag` varchar(2) NOT NULL,
  `aps_date` datetime NOT NULL,
  `ah_flag` varchar(80) NOT NULL,
  `ah_date` datetime NOT NULL,
  `migrate_flag` tinyint(1) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=88147 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE IF NOT EXISTS `transaction_history` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `user_uuid` varchar(80) NOT NULL,
  `data` text NOT NULL,
  `datetime_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE IF NOT EXISTS `transaction_type` (
  `uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `deleted` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uuid` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `address` text NOT NULL,
  `user_type_id` int(4) NOT NULL,
  `active` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_module`
--

CREATE TABLE IF NOT EXISTS `user_module` (
  `uuid` varchar(80) NOT NULL,
  `user_uuid` varchar(80) NOT NULL,
  `module_uuid` varchar(80) NOT NULL,
  `hasview` tinyint(4) DEFAULT '0',
  `hasadd` tinyint(4) DEFAULT '0',
  `hasedit` tinyint(4) DEFAULT '0',
  `hasdelete` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_serial`
--

CREATE TABLE IF NOT EXISTS `user_serial` (
  `uuid` varchar(200) NOT NULL,
  `user_uuid` varchar(80) NOT NULL,
  `user_code` varchar(100) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `isempty` tinyint(2) NOT NULL DEFAULT '0',
  `action` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_serial_temp`
--

CREATE TABLE IF NOT EXISTS `user_serial_temp` (
  `uuid` varchar(200) NOT NULL,
  `user_uuid` varchar(80) NOT NULL,
  `user_code` varchar(100) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `isempty` tinyint(2) NOT NULL DEFAULT '0',
  `action` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `uuid` varchar(80) NOT NULL,
  `id` int(4) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `billing_deleted`
--
ALTER TABLE `billing_deleted`
  ADD PRIMARY KEY (`delinq_id`), ADD KEY `loc_barangay_uuid` (`loc_barangay_uuid`), ADD KEY `uuid` (`uuid`), ADD KEY `property_index_no` (`property_index_no`), ADD KEY `dated` (`dated`), ADD KEY `effectivity_year` (`effectivity_year`), ADD KEY `classification_uuid` (`classification_uuid`), ADD KEY `property_kind_uuid` (`property_kind_uuid`), ADD KEY `loc_province_uuid` (`loc_province_uuid`), ADD KEY `loc_municipality_uuid` (`loc_municipality_uuid`), ADD KEY `administrator_province_uuid` (`administrator_province_uuid`), ADD KEY `administrator_municipality_uuid` (`administrator_municipality_uuid`), ADD KEY `administrator_barangay_uuid` (`administrator_barangay_uuid`), ADD KEY `owner_province_uuid` (`owner_province_uuid`), ADD KEY `owner_municipality_uuid` (`owner_municipality_uuid`), ADD KEY `owner_barangay_uuid` (`owner_barangay_uuid`), ADD KEY `actual_use` (`actual_use`), ADD KEY `arp_no` (`arp_no`);

--
-- Indexes for table `bldg_addtl_details`
--
ALTER TABLE `bldg_addtl_details`
  ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `bldg_structural_char`
--
ALTER TABLE `bldg_structural_char`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `bldg_types_classes`
--
ALTER TABLE `bldg_types_classes`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `building_assessment`
--
ALTER TABLE `building_assessment`
  ADD KEY `uuid` (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `building_components`
--
ALTER TABLE `building_components`
  ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `building_structure`
--
ALTER TABLE `building_structure`
  ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `classification`
--
ALTER TABLE `classification`
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `classification_sub_type`
--
ALTER TABLE `classification_sub_type`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `class_type_uuid` (`class_type_uuid`);

--
-- Indexes for table `classification_type`
--
ALTER TABLE `classification_type`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `classification_uuid` (`classification_uuid`);

--
-- Indexes for table `delinquencies`
--
ALTER TABLE `delinquencies`
  ADD PRIMARY KEY (`id_index`), ADD KEY `taxdec_uuid` (`taxdec_uuid`), ADD KEY `uuid` (`uuid`), ADD KEY `property_uuid` (`property_uuid`), ADD KEY `paid` (`paid`), ADD KEY `property_index_no` (`property_index_no`), ADD KEY `effectivity_year` (`effectivity_year`);

--
-- Indexes for table `improvements`
--
ALTER TABLE `improvements`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `improvements_type`
--
ALTER TABLE `improvements_type`
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `improvement_appraisal`
--
ALTER TABLE `improvement_appraisal`
  ADD KEY `property_uuid` (`property_uuid`), ADD KEY `type_uuid` (`type_uuid`);

--
-- Indexes for table `land_addtl_details`
--
ALTER TABLE `land_addtl_details`
  ADD KEY `pin` (`pin`);

--
-- Indexes for table `land_adjustment_factor`
--
ALTER TABLE `land_adjustment_factor`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `land_adj_factors`
--
ALTER TABLE `land_adj_factors`
  ADD PRIMARY KEY (`uuid`), ADD KEY `code` (`code`);

--
-- Indexes for table `land_appraisal`
--
ALTER TABLE `land_appraisal`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`), ADD KEY `classification` (`classification`), ADD KEY `sub_class` (`sub_class`);

--
-- Indexes for table `land_assessment`
--
ALTER TABLE `land_assessment`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `land_depreciation_improvements`
--
ALTER TABLE `land_depreciation_improvements`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `land_other_improvement`
--
ALTER TABLE `land_other_improvement`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `location_barangay`
--
ALTER TABLE `location_barangay`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `city_uuid` (`city_uuid`);

--
-- Indexes for table `location_municipality`
--
ALTER TABLE `location_municipality`
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `location_provinces`
--
ALTER TABLE `location_provinces`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `region_uuid` (`region_uuid`);

--
-- Indexes for table `location_region`
--
ALTER TABLE `location_region`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `machine_appraisal`
--
ALTER TABLE `machine_appraisal`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `mortgage`
--
ALTER TABLE `mortgage`
  ADD KEY `property_uuid` (`property_uuid`), ADD KEY `user_uuid` (`user_uuid`);

--
-- Indexes for table `or_marked_paid`
--
ALTER TABLE `or_marked_paid`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`account_number`), ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `account_number` (`account_number`), ADD KEY `municipality_uuid` (`municipality_uuid`), ADD KEY `province_uuid` (`province_uuid`), ADD KEY `grouping_uuid` (`grouping_uuid`), ADD KEY `lastname` (`lastname`), ADD KEY `middlename` (`middlename`), ADD KEY `firstname` (`firstname`);

--
-- Indexes for table `owner_groups`
--
ALTER TABLE `owner_groups`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `parent_pin`
--
ALTER TABLE `parent_pin`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `payment_balance`
--
ALTER TABLE `payment_balance`
  ADD PRIMARY KEY (`uuid`), ADD KEY `owner_uuid` (`owner_uuid`);

--
-- Indexes for table `payment_check`
--
ALTER TABLE `payment_check`
  ADD PRIMARY KEY (`uuid`), ADD KEY `or_no` (`or_no`), ADD KEY `check_no` (`check_no`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `property_uuid` (`property_uuid`), ADD KEY `or_no` (`or_no`), ADD KEY `user_uuid` (`user_uuid`), ADD KEY `pin` (`pin`), ADD KEY `arp_no` (`arp_no`(767)), ADD KEY `account_number` (`account_number`), ADD KEY `term` (`term`), ADD KEY `term_2` (`term`), ADD KEY `status` (`status`), ADD KEY `qtr_to` (`qtr_to`), ADD KEY `qtr_from` (`qtr_from`);

--
-- Indexes for table `physical_change`
--
ALTER TABLE `physical_change`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `pin_history`
--
ALTER TABLE `pin_history`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `pin_library`
--
ALTER TABLE `pin_library`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `pin_library_barangay`
--
ALTER TABLE `pin_library_barangay`
  ADD PRIMARY KEY (`uuid`), ADD KEY `municipality_uuid` (`municipality_uuid`);

--
-- Indexes for table `pin_library_city`
--
ALTER TABLE `pin_library_city`
  ADD PRIMARY KEY (`uuid`), ADD KEY `region_uuid` (`region_uuid`);

--
-- Indexes for table `pin_library_municipality`
--
ALTER TABLE `pin_library_municipality`
  ADD PRIMARY KEY (`uuid`), ADD KEY `province_uuid` (`province_uuid`);

--
-- Indexes for table `pin_library_province`
--
ALTER TABLE `pin_library_province`
  ADD PRIMARY KEY (`uuid`), ADD KEY `region_uuid` (`region_uuid`);

--
-- Indexes for table `pin_library_section`
--
ALTER TABLE `pin_library_section`
  ADD PRIMARY KEY (`uuid`), ADD KEY `barangay_uuid` (`barangay_uuid`);

--
-- Indexes for table `proc_requirements`
--
ALTER TABLE `proc_requirements`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `pin` (`pin`), ADD KEY `property_type_uuid` (`property_type_uuid`), ADD KEY `main_owner_uuid` (`main_owner_uuid`);

--
-- Indexes for table `property_assessment`
--
ALTER TABLE `property_assessment`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `property_details_building`
--
ALTER TABLE `property_details_building`
  ADD PRIMARY KEY (`uuid`), ADD KEY `property_uuid` (`property_uuid`), ADD KEY `building_pin` (`building_pin`), ADD KEY `land_pin` (`land_pin`);

--
-- Indexes for table `property_details_improvement`
--
ALTER TABLE `property_details_improvement`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `property_details_land`
--
ALTER TABLE `property_details_land`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `property_uuid` (`property_uuid`), ADD KEY `location_brgy_uuid` (`location_brgy_uuid`), ADD KEY `location_municipality_uuid` (`location_municipality_uuid`), ADD KEY `location_province_uuid` (`location_province_uuid`);

--
-- Indexes for table `property_details_machine`
--
ALTER TABLE `property_details_machine`
  ADD PRIMARY KEY (`property_uuid`);

--
-- Indexes for table `property_owner`
--
ALTER TABLE `property_owner`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `owner_uuid` (`owner_uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `property_requirements`
--
ALTER TABLE `property_requirements`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `property_uuid` (`property_uuid`), ADD KEY `requirement_uuid` (`requirement_uuid`);

--
-- Indexes for table `property_tax_declaration`
--
ALTER TABLE `property_tax_declaration`
  ADD PRIMARY KEY (`delinq_id`), ADD KEY `loc_barangay_uuid` (`loc_barangay_uuid`), ADD KEY `uuid` (`uuid`), ADD KEY `property_index_no` (`property_index_no`), ADD KEY `dated` (`dated`), ADD KEY `effectivity_year` (`effectivity_year`), ADD KEY `classification_uuid` (`classification_uuid`), ADD KEY `property_kind_uuid` (`property_kind_uuid`), ADD KEY `loc_province_uuid` (`loc_province_uuid`), ADD KEY `loc_municipality_uuid` (`loc_municipality_uuid`), ADD KEY `administrator_province_uuid` (`administrator_province_uuid`), ADD KEY `administrator_municipality_uuid` (`administrator_municipality_uuid`), ADD KEY `administrator_barangay_uuid` (`administrator_barangay_uuid`), ADD KEY `owner_province_uuid` (`owner_province_uuid`), ADD KEY `owner_municipality_uuid` (`owner_municipality_uuid`), ADD KEY `owner_barangay_uuid` (`owner_barangay_uuid`), ADD KEY `effectivity_quarter` (`effectivity_quarter`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `uuid_2` (`uuid`);

--
-- Indexes for table `serial_history`
--
ALTER TABLE `serial_history`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `src_actual_use`
--
ALTER TABLE `src_actual_use`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `src_building_assessment`
--
ALTER TABLE `src_building_assessment`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `actual_use_uuid` (`actual_use_uuid`);

--
-- Indexes for table `src_building_class`
--
ALTER TABLE `src_building_class`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `structure_uuid` (`structure_uuid`), ADD KEY `building_class` (`building_class`), ADD KEY `building_type_uuid` (`building_type_uuid`);

--
-- Indexes for table `src_building_components`
--
ALTER TABLE `src_building_components`
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `src_building_dep`
--
ALTER TABLE `src_building_dep`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `structure_uuid` (`structure_uuid`), ADD KEY `building_class` (`building_class`), ADD KEY `building_type_uuid` (`building_type_uuid`);

--
-- Indexes for table `src_building_structure`
--
ALTER TABLE `src_building_structure`
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `src_building_type`
--
ALTER TABLE `src_building_type`
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `src_delinquent_accounts`
--
ALTER TABLE `src_delinquent_accounts`
  ADD KEY `owner_uuid` (`owner_uuid`), ADD KEY `barangay_uuid` (`barangay_uuid`);

--
-- Indexes for table `src_machine_assessment`
--
ALTER TABLE `src_machine_assessment`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `actual_use_uuid` (`actual_use_uuid`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_number`), ADD UNIQUE KEY `transactions_uuid` (`transactions_uuid`), ADD KEY `property_uuid` (`property_uuid`), ADD KEY `arp_no` (`arp_no`), ADD KEY `or_no` (`or_no`), ADD KEY `status` (`status`), ADD KEY `transaction_type` (`transaction_type`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`uuid`), ADD KEY `user_uuid` (`user_uuid`), ADD KEY `property_uuid` (`property_uuid`);

--
-- Indexes for table `transaction_type`
--
ALTER TABLE `transaction_type`
  ADD PRIMARY KEY (`uuid`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `uuid` (`uuid`), ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `user_module`
--
ALTER TABLE `user_module`
  ADD PRIMARY KEY (`uuid`), ADD KEY `module_uuid` (`module_uuid`), ADD KEY `user_uuid` (`user_uuid`);

--
-- Indexes for table `user_serial`
--
ALTER TABLE `user_serial`
  ADD PRIMARY KEY (`uuid`), ADD KEY `user_uuid` (`user_uuid`);

--
-- Indexes for table `user_serial_temp`
--
ALTER TABLE `user_serial_temp`
  ADD PRIMARY KEY (`uuid`), ADD KEY `user_uuid` (`user_uuid`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_deleted`
--
ALTER TABLE `billing_deleted`
  MODIFY `delinq_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `delinquencies`
--
ALTER TABLE `delinquencies`
  MODIFY `id_index` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=517472;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `account_number` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47302;
--
-- AUTO_INCREMENT for table `property_tax_declaration`
--
ALTER TABLE `property_tax_declaration`
  MODIFY `delinq_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=577890;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_number` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88147;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bldg_addtl_details`
--
ALTER TABLE `bldg_addtl_details`
ADD CONSTRAINT `bldg_addtl_details_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `bldg_structural_char`
--
ALTER TABLE `bldg_structural_char`
ADD CONSTRAINT `bldg_structural_char_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `building_assessment`
--
ALTER TABLE `building_assessment`
ADD CONSTRAINT `building_assessment_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `building_components`
--
ALTER TABLE `building_components`
ADD CONSTRAINT `building_components_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `building_structure`
--
ALTER TABLE `building_structure`
ADD CONSTRAINT `building_structure_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `classification_sub_type`
--
ALTER TABLE `classification_sub_type`
ADD CONSTRAINT `classification_sub_type_ibfk_1` FOREIGN KEY (`class_type_uuid`) REFERENCES `classification_type` (`uuid`);

--
-- Constraints for table `classification_type`
--
ALTER TABLE `classification_type`
ADD CONSTRAINT `classification_type_ibfk_1` FOREIGN KEY (`classification_uuid`) REFERENCES `classification` (`uuid`);

--
-- Constraints for table `delinquencies`
--
ALTER TABLE `delinquencies`
ADD CONSTRAINT `delinquencies_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `improvements`
--
ALTER TABLE `improvements`
ADD CONSTRAINT `improvements_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `improvement_appraisal`
--
ALTER TABLE `improvement_appraisal`
ADD CONSTRAINT `improvement_appraisal_ibfk_1` FOREIGN KEY (`type_uuid`) REFERENCES `improvements_type` (`uuid`),
ADD CONSTRAINT `improvement_appraisal_ibfk_2` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `land_adjustment_factor`
--
ALTER TABLE `land_adjustment_factor`
ADD CONSTRAINT `land_adjustment_factor_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `land_appraisal`
--
ALTER TABLE `land_appraisal`
ADD CONSTRAINT `land_appraisal_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`),
ADD CONSTRAINT `land_appraisal_ibfk_2` FOREIGN KEY (`classification`) REFERENCES `classification` (`uuid`);

--
-- Constraints for table `land_assessment`
--
ALTER TABLE `land_assessment`
ADD CONSTRAINT `land_assessment_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `land_depreciation_improvements`
--
ALTER TABLE `land_depreciation_improvements`
ADD CONSTRAINT `land_depreciation_improvements_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `land_other_improvement`
--
ALTER TABLE `land_other_improvement`
ADD CONSTRAINT `land_other_improvement_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `machine_appraisal`
--
ALTER TABLE `machine_appraisal`
ADD CONSTRAINT `machine_appraisal_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `mortgage`
--
ALTER TABLE `mortgage`
ADD CONSTRAINT `mortgage_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`),
ADD CONSTRAINT `mortgage_ibfk_2` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`);

--
-- Constraints for table `or_marked_paid`
--
ALTER TABLE `or_marked_paid`
ADD CONSTRAINT `or_marked_paid_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`municipality_uuid`) REFERENCES `location_municipality` (`uuid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `owner_ibfk_2` FOREIGN KEY (`province_uuid`) REFERENCES `location_provinces` (`uuid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `owner_ibfk_3` FOREIGN KEY (`grouping_uuid`) REFERENCES `owner_groups` (`uuid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `parent_pin`
--
ALTER TABLE `parent_pin`
ADD CONSTRAINT `parent_pin_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `payment_check`
--
ALTER TABLE `payment_check`
ADD CONSTRAINT `payment_check_ibfk_1` FOREIGN KEY (`or_no`) REFERENCES `payment_details` (`or_no`);

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
ADD CONSTRAINT `payment_details_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `physical_change`
--
ALTER TABLE `physical_change`
ADD CONSTRAINT `physical_change_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`property_type_uuid`) REFERENCES `property_type` (`uuid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `properties_ibfk_2` FOREIGN KEY (`main_owner_uuid`) REFERENCES `owner` (`uuid`);

--
-- Constraints for table `property_assessment`
--
ALTER TABLE `property_assessment`
ADD CONSTRAINT `property_assessment_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `property_details_land`
--
ALTER TABLE `property_details_land`
ADD CONSTRAINT `property_details_land_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`),
ADD CONSTRAINT `property_details_land_ibfk_2` FOREIGN KEY (`location_brgy_uuid`) REFERENCES `location_barangay` (`uuid`),
ADD CONSTRAINT `property_details_land_ibfk_3` FOREIGN KEY (`location_municipality_uuid`) REFERENCES `location_municipality` (`uuid`),
ADD CONSTRAINT `property_details_land_ibfk_4` FOREIGN KEY (`location_province_uuid`) REFERENCES `location_provinces` (`uuid`);

--
-- Constraints for table `property_details_machine`
--
ALTER TABLE `property_details_machine`
ADD CONSTRAINT `property_details_machine_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `property_owner`
--
ALTER TABLE `property_owner`
ADD CONSTRAINT `property_owner_ibfk_1` FOREIGN KEY (`owner_uuid`) REFERENCES `owner` (`uuid`),
ADD CONSTRAINT `property_owner_ibfk_2` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `property_requirements`
--
ALTER TABLE `property_requirements`
ADD CONSTRAINT `property_requirements_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`),
ADD CONSTRAINT `property_requirements_ibfk_2` FOREIGN KEY (`requirement_uuid`) REFERENCES `proc_requirements` (`uuid`);

--
-- Constraints for table `property_tax_declaration`
--
ALTER TABLE `property_tax_declaration`
ADD CONSTRAINT `property_tax_declaration_ibfk_1` FOREIGN KEY (`loc_barangay_uuid`) REFERENCES `location_barangay` (`uuid`),
ADD CONSTRAINT `property_tax_declaration_ibfk_2` FOREIGN KEY (`loc_municipality_uuid`) REFERENCES `location_municipality` (`uuid`),
ADD CONSTRAINT `property_tax_declaration_ibfk_3` FOREIGN KEY (`loc_province_uuid`) REFERENCES `location_provinces` (`uuid`),
ADD CONSTRAINT `property_tax_declaration_ibfk_4` FOREIGN KEY (`property_kind_uuid`) REFERENCES `properties` (`property_type_uuid`),
ADD CONSTRAINT `property_tax_declaration_ibfk_5` FOREIGN KEY (`classification_uuid`) REFERENCES `classification` (`uuid`);

--
-- Constraints for table `src_machine_assessment`
--
ALTER TABLE `src_machine_assessment`
ADD CONSTRAINT `src_machine_assessment_ibfk_1` FOREIGN KEY (`actual_use_uuid`) REFERENCES `src_actual_use` (`uuid`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

--
-- Constraints for table `transaction_history`
--
ALTER TABLE `transaction_history`
ADD CONSTRAINT `transaction_history_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`),
ADD CONSTRAINT `transaction_history_ibfk_2` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`);

--
-- Constraints for table `user_module`
--
ALTER TABLE `user_module`
ADD CONSTRAINT `user_module_ibfk_1` FOREIGN KEY (`module_uuid`) REFERENCES `modules` (`uuid`),
ADD CONSTRAINT `user_module_ibfk_2` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
