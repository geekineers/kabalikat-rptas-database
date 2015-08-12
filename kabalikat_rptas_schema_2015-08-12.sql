-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2015 at 10:05 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kabalikat_rptas`
--

-- --------------------------------------------------------

--
-- Table structure for table `8l_bldg_details`
--

CREATE TABLE IF NOT EXISTS `8l_bldg_details` (
  `pin` varchar(100) NOT NULL,
  `arp_no` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `actual_use` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `addl_fbldg_app`
--

CREATE TABLE IF NOT EXISTS `addl_fbldg_app` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `ftotmval` double DEFAULT NULL,
  `ftotadjustments` double DEFAULT NULL,
  `fadjmv` double DEFAULT NULL,
  `fbldgage` double DEFAULT NULL,
  `fdeprate` double DEFAULT NULL,
  `fdepval` double DEFAULT NULL,
  `imultstruc` int(11) DEFAULT NULL,
  `icompparts` int(11) DEFAULT NULL,
  `ioverridedepval` int(11) DEFAULT NULL,
  `ibldgstrip` int(11) DEFAULT NULL,
  `istructchar` int(11) DEFAULT NULL,
  KEY `ix177_1` (`cpin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addl_fbldg_ass`
--

CREATE TABLE IF NOT EXISTS `addl_fbldg_ass` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `fbldgarea` float DEFAULT '0',
  `fdepmval` double DEFAULT NULL,
  `cactuse` char(12) DEFAULT NULL,
  `cdetcode` char(3) DEFAULT NULL,
  `fasslev` float DEFAULT NULL,
  `fassval` double DEFAULT '0',
  `ibldgstripno` smallint(6) DEFAULT NULL,
  `casstaxability` char(1) DEFAULT NULL,
  KEY `ix131_1` (`cpin`),
  KEY `ix131_2` (`carpn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addl_fbldg_comp`
--

CREATE TABLE IF NOT EXISTS `addl_fbldg_comp` (
  `cpin` char(23) NOT NULL DEFAULT '',
  `carpn` char(14) DEFAULT NULL,
  `ccompcode` char(5) DEFAULT NULL,
  `farea` float DEFAULT NULL,
  `fpercentprice` float DEFAULT NULL,
  `fadjustment` double DEFAULT NULL,
  `cactuse` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addl_fbldg_stru`
--

CREATE TABLE IF NOT EXISTS `addl_fbldg_stru` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(20) DEFAULT NULL,
  `farea` float DEFAULT NULL,
  `cstructype` char(4) DEFAULT NULL,
  `cclass` char(3) DEFAULT NULL,
  `cbldgtype` char(3) DEFAULT NULL,
  `ioverridemval` smallint(6) DEFAULT NULL,
  `fuval` float DEFAULT NULL,
  `fmval` double DEFAULT NULL,
  `cactuse` char(12) DEFAULT NULL,
  `istrucno` smallint(6) DEFAULT NULL,
  `fperccomp` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addl_fimpr_app`
--

CREATE TABLE IF NOT EXISTS `addl_fimpr_app` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `cimprn` char(3) DEFAULT NULL,
  `cimprcode` char(4) DEFAULT NULL,
  `fpercprice` float DEFAULT NULL,
  `iqty` int(11) DEFAULT NULL,
  `farea` float DEFAULT NULL,
  `ioverridemv` int(11) DEFAULT NULL,
  `fmval` double DEFAULT NULL,
  KEY `ix321_1` (`cpin`),
  KEY `ix321_2` (`carpn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addl_fland_adj`
--

CREATE TABLE IF NOT EXISTS `addl_fland_adj` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `cadjcode` char(3) DEFAULT NULL,
  `fadjperc` float DEFAULT NULL,
  `fadjval` float(13,2) DEFAULT NULL,
  KEY `ix248_1` (`cpin`),
  KEY `ix248_2` (`carpn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addl_fland_app`
--

CREATE TABLE IF NOT EXISTS `addl_fland_app` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `istripn` int(11) DEFAULT NULL,
  `cclass` char(100) DEFAULT NULL,
  `csubclass` char(100) DEFAULT NULL,
  `farea` float DEFAULT NULL,
  `cadjcode` char(3) DEFAULT NULL,
  `fadjval` float(13,2) DEFAULT NULL,
  `fuval` float DEFAULT NULL,
  `fmval` float(13,2) DEFAULT NULL,
  `fadjarea` float DEFAULT NULL,
  KEY `ix397_2` (`cpin`,`carpn`),
  KEY `ix112_2` (`cpin`),
  KEY `ix112_3` (`carpn`),
  KEY `ix112_4` (`cclass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addl_fland_ass`
--

CREATE TABLE IF NOT EXISTS `addl_fland_ass` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `isplitn` int(11) DEFAULT NULL,
  `farea` float DEFAULT NULL,
  `cactuse` char(20) DEFAULT NULL,
  `cdetcode` char(3) DEFAULT NULL,
  `fasslev` float DEFAULT NULL,
  `fassval` float(13,2) DEFAULT NULL,
  `casstaxability` char(1) DEFAULT NULL,
  KEY `ix114_2` (`cpin`),
  KEY `ix114_3` (`carpn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addl_fmach_app`
--

CREATE TABLE IF NOT EXISTS `addl_fmach_app` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `ccondition` char(20) DEFAULT NULL,
  `cmachkind` char(60) DEFAULT NULL,
  `cbrandmodel` char(60) DEFAULT NULL,
  `ccapacity` char(20) DEFAULT NULL,
  `dtacquired` char(13) DEFAULT NULL,
  `dtinstalled` char(13) DEFAULT NULL,
  `dtoperated` char(13) DEFAULT NULL,
  `iqty` int(11) DEFAULT NULL,
  `facqrepcost` double DEFAULT NULL,
  `ffreight` float DEFAULT NULL,
  `finstallation` float DEFAULT NULL,
  `finsurance` float DEFAULT NULL,
  `fothers` float DEFAULT NULL,
  `iestlife` int(11) DEFAULT NULL,
  `iremlife` int(11) DEFAULT NULL,
  `fmarketvalue` double DEFAULT NULL,
  `iyearsused` int(11) DEFAULT NULL,
  `fdeprate` float DEFAULT NULL,
  `fdep` float DEFAULT NULL,
  `fdepmv` double DEFAULT NULL,
  KEY `ix142_1` (`cpin`),
  KEY `ix142_2` (`carpn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `uuid` varchar(80) NOT NULL,
  `name` varchar(300) NOT NULL,
  `bankcode` int(11) unsigned NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing_deleted`
--

CREATE TABLE IF NOT EXISTS `billing_deleted` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `delinq_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `datetime_removed` datetime NOT NULL,
  PRIMARY KEY (`delinq_id`),
  KEY `loc_barangay_uuid` (`loc_barangay_uuid`),
  KEY `uuid` (`uuid`),
  KEY `property_index_no` (`property_index_no`),
  KEY `dated` (`dated`),
  KEY `effectivity_year` (`effectivity_year`),
  KEY `classification_uuid` (`classification_uuid`),
  KEY `property_kind_uuid` (`property_kind_uuid`),
  KEY `loc_province_uuid` (`loc_province_uuid`),
  KEY `loc_municipality_uuid` (`loc_municipality_uuid`),
  KEY `administrator_province_uuid` (`administrator_province_uuid`),
  KEY `administrator_municipality_uuid` (`administrator_municipality_uuid`),
  KEY `administrator_barangay_uuid` (`administrator_barangay_uuid`),
  KEY `owner_province_uuid` (`owner_province_uuid`),
  KEY `owner_municipality_uuid` (`owner_municipality_uuid`),
  KEY `owner_barangay_uuid` (`owner_barangay_uuid`),
  KEY `actual_use` (`actual_use`),
  KEY `arp_no` (`arp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `deprciation_value` decimal(15,2) DEFAULT NULL,
  KEY `property_uuid` (`property_uuid`)
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
  `others2` varchar(255) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `value` decimal(10,2) NOT NULL,
  PRIMARY KEY (`uuid`)
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
  `istructchar` int(11) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL
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
  `ibldgstripno` smallint(6) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  KEY `uuid` (`uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `ccompcode` varchar(50) CHARACTER SET latin1 NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  KEY `property_uuid` (`property_uuid`)
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
  `cbldgtype` varchar(10) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  KEY `property_uuid` (`property_uuid`)
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
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `uuid` (`uuid`)
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
  `value` double NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `class_type_uuid` (`class_type_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classification_type`
--

CREATE TABLE IF NOT EXISTS `classification_type` (
  `uuid` varchar(80) NOT NULL,
  `classification_uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `classification_uuid` (`classification_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delinquencies`
--

CREATE TABLE IF NOT EXISTS `delinquencies` (
  `id` int(11) unsigned NOT NULL,
  `id_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_flag` int(1) unsigned NOT NULL DEFAULT '0',
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  PRIMARY KEY (`id_index`),
  KEY `taxdec_uuid` (`taxdec_uuid`),
  KEY `uuid` (`uuid`),
  KEY `property_uuid` (`property_uuid`),
  KEY `paid` (`paid`),
  KEY `property_index_no` (`property_index_no`),
  KEY `effectivity_year` (`effectivity_year`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=501599 ;

-- --------------------------------------------------------

--
-- Table structure for table `hist_billing`
--

CREATE TABLE IF NOT EXISTS `hist_billing` (
  `cpin` char(23) DEFAULT NULL,
  `cprovpin` char(15) DEFAULT NULL,
  `itaxyear` int(11) DEFAULT NULL,
  `iqtr` int(11) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `ctdn` char(20) DEFAULT NULL,
  `cowncode` char(7) DEFAULT NULL,
  `cactuse` char(20) DEFAULT NULL,
  `fmval1` float DEFAULT NULL,
  `fassval1` float DEFAULT NULL,
  `fbasic1` float DEFAULT NULL,
  `fsef1` float DEFAULT NULL,
  `fmval2` float DEFAULT NULL,
  `fassval2` float DEFAULT NULL,
  `fbasic2` float DEFAULT NULL,
  `fsef2` float DEFAULT NULL,
  `fmval3` float DEFAULT NULL,
  `fassval3` float DEFAULT NULL,
  `fbasic3` float DEFAULT NULL,
  `fsef3` float DEFAULT NULL,
  `fmval4` float DEFAULT NULL,
  `fassval4` float DEFAULT NULL,
  `fbasic4` float DEFAULT NULL,
  `fsef4` float DEFAULT NULL,
  `ipyd` int(11) DEFAULT NULL,
  KEY `ix241_1` (`cpin`),
  KEY `ix241_2` (`cprovpin`),
  KEY `ix241_3` (`itaxyear`),
  KEY `ix241_4` (`iqtr`),
  KEY `ix241_7` (`cowncode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `improvement_base_market_value` varchar(100) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `percentage` double DEFAULT NULL,
  UNIQUE KEY `uuid` (`uuid`)
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
  `market_value` decimal(15,2) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  KEY `property_uuid` (`property_uuid`),
  KEY `type_uuid` (`type_uuid`)
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
  `imount` int(11) DEFAULT NULL,
  KEY `pin` (`pin`)
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
  `market_value` decimal(15,2) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `land_adj_factors`
--

CREATE TABLE IF NOT EXISTS `land_adj_factors` (
  `uuid` varchar(80) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `code` char(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` char(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `adjustment_factor` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `land_appraisal`
--

CREATE TABLE IF NOT EXISTS `land_appraisal` (
  `uuid` varchar(80) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `cclass` varchar(255) NOT NULL,
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
  `migrate_flag` tinyint(1) unsigned DEFAULT '0',
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`),
  KEY `classification` (`classification`),
  KEY `sub_class` (`sub_class`)
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
  `migrate_flag` tinyint(1) unsigned DEFAULT '0',
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `depreciated_value` decimal(15,2) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `base_market_value` decimal(15,2) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `property_uuid` (`property_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_barangay`
--

CREATE TABLE IF NOT EXISTS `location_barangay` (
  `uuid` varchar(80) NOT NULL,
  `city_uuid` varchar(80) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `coordinates` text NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `city_uuid` (`city_uuid`)
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
  `coordinates` text NOT NULL,
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_provinces`
--

CREATE TABLE IF NOT EXISTS `location_provinces` (
  `uuid` varchar(80) NOT NULL,
  `region_uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `coordinates` text NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `region_uuid` (`region_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_region`
--

CREATE TABLE IF NOT EXISTS `location_region` (
  `uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `coordinates` text NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_uuid` varchar(80) NOT NULL,
  `person_involve` varchar(80) NOT NULL,
  `type_of_process` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_uuid` (`property_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `depreciated_market_value` decimal(15,2) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_billing`
--

CREATE TABLE IF NOT EXISTS `main_billing` (
  `cpin` char(23) DEFAULT NULL,
  `cprovpin` char(15) DEFAULT NULL,
  `itaxyear` int(11) DEFAULT NULL,
  `iqtr` int(11) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `ctdn` char(20) DEFAULT NULL,
  `cowncode` char(7) DEFAULT NULL,
  `cactuse` char(20) DEFAULT NULL,
  `fmval1` double DEFAULT NULL,
  `fassval1` decimal(13,2) DEFAULT NULL,
  `fbasic1` double DEFAULT NULL,
  `fsef1` double DEFAULT NULL,
  `fmval2` double DEFAULT NULL,
  `fassval2` decimal(13,2) DEFAULT NULL,
  `fbasic2` double DEFAULT NULL,
  `fsef2` double DEFAULT NULL,
  `fmval3` double DEFAULT NULL,
  `fassval3` decimal(13,2) DEFAULT NULL,
  `fbasic3` double DEFAULT NULL,
  `fsef3` double DEFAULT NULL,
  `fmval4` double DEFAULT NULL,
  `fassval4` decimal(13,2) DEFAULT NULL,
  `fbasic4` double DEFAULT NULL,
  `fsef4` double DEFAULT NULL,
  `ipyd` int(11) DEFAULT NULL,
  KEY `ix141_1` (`cpin`),
  KEY `ix141_2` (`itaxyear`),
  KEY `ix141_3` (`iqtr`),
  KEY `ix141_6` (`cowncode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `main_faas_bldg`
--

CREATE TABLE IF NOT EXISTS `main_faas_bldg` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `cprovpin` char(15) DEFAULT NULL,
  `ctdn` char(5) DEFAULT NULL,
  `ctranscode` char(2) DEFAULT NULL,
  `cowncode` char(7) DEFAULT NULL,
  `cadminnm` char(150) DEFAULT NULL,
  `cadminaddr` char(150) DEFAULT NULL,
  `cbldgpermit` char(15) DEFAULT NULL,
  `istoreys` int(11) DEFAULT NULL,
  `dtconsdt` date DEFAULT NULL,
  `dtcompdt` date DEFAULT NULL,
  `dtoccudt` date DEFAULT NULL,
  `fgrndflrarea` float DEFAULT NULL,
  `ftbldgarea` float DEFAULT NULL,
  `ftassval` double DEFAULT NULL,
  `ftdepmval` double DEFAULT NULL,
  `ctaxability` char(1) DEFAULT NULL,
  `cpownnm` char(150) DEFAULT NULL,
  `fpassval` float(13,2) DEFAULT NULL,
  `dteffdate` date DEFAULT NULL,
  `cappnm` char(40) DEFAULT NULL,
  `dtappdt` date DEFAULT NULL,
  `cmemo1` char(250) DEFAULT NULL,
  `cmemo2` char(250) DEFAULT NULL,
  `cmemo3` char(250) DEFAULT NULL,
  `cppin` char(23) DEFAULT NULL,
  `cparpn` char(20) DEFAULT NULL,
  `cpprovpin` char(15) DEFAULT NULL,
  `cptdn` char(30) DEFAULT NULL,
  `cusercode` char(20) DEFAULT NULL,
  `dttransdt` date DEFAULT NULL,
  `ctranstm` char(8) DEFAULT NULL,
  `fconscost` float DEFAULT NULL,
  `dtbacktaxdt` date DEFAULT NULL,
  `cexemptcode` char(3) DEFAULT NULL,
  `cisprovtrans` char(1) DEFAULT NULL,
  KEY `ix148_3` (`cprovpin`),
  KEY `ix269_1` (`cpin`),
  KEY `ix181_4` (`cowncode`),
  KEY `i_bldg` (`cpin`,`cprovpin`,`carpn`,`ctdn`,`cppin`,`cparpn`),
  KEY `ix269_2` (`carpn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `main_faas_impr`
--

CREATE TABLE IF NOT EXISTS `main_faas_impr` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `cprovpin` char(15) DEFAULT NULL,
  `ctdn` char(5) DEFAULT NULL,
  `ctranscode` char(2) DEFAULT NULL,
  `creference` char(20) DEFAULT NULL,
  `cbldgpin` char(23) DEFAULT NULL,
  `cowncode` char(7) DEFAULT NULL,
  `cadminnm` char(150) DEFAULT NULL,
  `cadminaddr` char(150) DEFAULT NULL,
  `fuval` float DEFAULT NULL,
  `ftarea` float DEFAULT NULL,
  `ftmval` decimal(15,2) DEFAULT NULL,
  `ioverridemval` int(11) DEFAULT NULL,
  `cactuse` char(20) DEFAULT NULL,
  `cdetcode` char(3) DEFAULT NULL,
  `fasslev` float DEFAULT NULL,
  `ftassval` float(15,2) DEFAULT NULL,
  `cppin` char(23) DEFAULT NULL,
  `cparpn` char(14) DEFAULT NULL,
  `cpprovpin` char(15) DEFAULT NULL,
  `cptdn` char(5) DEFAULT NULL,
  `cpownnm` char(150) DEFAULT NULL,
  `fpassval` float(13,2) DEFAULT NULL,
  `dteffdate` date DEFAULT NULL,
  `ctaxability` char(1) DEFAULT NULL,
  `cappnm` char(150) DEFAULT NULL,
  `dtappdt` date DEFAULT NULL,
  `cusercode` char(20) DEFAULT NULL,
  `dttransdt` date DEFAULT NULL,
  `ctranstm` char(12) DEFAULT NULL,
  `cmemo1` char(250) DEFAULT NULL,
  `cmemo2` char(250) DEFAULT NULL,
  `cmemo3` char(250) DEFAULT NULL,
  `dtbacktaxdt` date DEFAULT NULL,
  `cexemptcode` char(3) DEFAULT NULL,
  `cisprovtrans` char(1) DEFAULT NULL,
  KEY `ix315_2` (`carpn`),
  KEY `ix315_1` (`cpin`),
  KEY `i_impr` (`cpin`,`cprovpin`,`carpn`,`ctdn`,`cppin`,`cparpn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `main_faas_land`
--

CREATE TABLE IF NOT EXISTS `main_faas_land` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `cprovpin` char(15) DEFAULT NULL,
  `ctdn` char(20) DEFAULT NULL,
  `ctct` char(200) DEFAULT NULL,
  `clotn` char(200) DEFAULT NULL,
  `cblkn` char(200) DEFAULT NULL,
  `csurvey` char(200) DEFAULT NULL,
  `cowncode` char(7) DEFAULT NULL,
  `cadminnm` char(150) DEFAULT NULL,
  `cadminaddr` char(150) DEFAULT NULL,
  `ctranscode` char(2) DEFAULT NULL,
  `czonecode` char(3) DEFAULT NULL,
  `cnorth` char(200) DEFAULT NULL,
  `ceast` char(200) DEFAULT NULL,
  `csouth` char(200) DEFAULT NULL,
  `cwest` char(200) DEFAULT NULL,
  `clformat` char(1) DEFAULT NULL,
  `ftarea` float DEFAULT NULL,
  `ftmval` decimal(15,2) DEFAULT NULL,
  `ftadjval` decimal(15,2) DEFAULT NULL,
  `fttreeval` float DEFAULT NULL,
  `imount` int(11) DEFAULT NULL,
  `ftassval` decimal(15,2) DEFAULT NULL,
  `ctaxability` char(1) DEFAULT NULL,
  `cexemptcode` char(3) DEFAULT NULL,
  `dteffdate` date DEFAULT NULL,
  `cpownnm` char(150) DEFAULT NULL,
  `fpassval` decimal(15,2) DEFAULT NULL,
  `cppin` char(23) DEFAULT NULL,
  `cparpn` char(20) DEFAULT NULL,
  `cpprovpin` char(20) DEFAULT NULL,
  `cptdn` char(20) DEFAULT NULL,
  `cappnm` char(150) DEFAULT NULL,
  `dtappdt` date DEFAULT NULL,
  `cusercode` char(20) DEFAULT NULL,
  `dttransdt` date DEFAULT NULL,
  `ctranstm` char(8) DEFAULT NULL,
  `dtbtdate` date DEFAULT NULL,
  `cmemo1` text,
  `cmemo2` text,
  `cmemo3` text,
  `cisprovtrans` char(1) DEFAULT NULL,
  `fpmval` decimal(15,2) DEFAULT NULL,
  KEY `ix393_30` (`cparpn`),
  KEY `ix393_31` (`cpprovpin`),
  KEY `ix393_9` (`cowncode`),
  KEY `ix393_29` (`cppin`),
  KEY `ix100_1` (`cpin`),
  KEY `ix100_2` (`carpn`),
  KEY `ix393_3` (`cprovpin`),
  KEY `ix100_4` (`ctdn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_faas_mach`
--

CREATE TABLE IF NOT EXISTS `main_faas_mach` (
  `cpin` char(23) DEFAULT NULL,
  `carpn` char(14) DEFAULT NULL,
  `cprovpin` char(15) DEFAULT NULL,
  `ctdn` char(5) DEFAULT NULL,
  `ctranscode` char(2) DEFAULT NULL,
  `cowncode` char(7) DEFAULT NULL,
  `cadminnm` char(150) DEFAULT NULL,
  `cadminaddr` char(150) DEFAULT NULL,
  `ctaxability` char(1) DEFAULT NULL,
  `cpownnm` char(150) DEFAULT NULL,
  `fpassval` float(13,2) DEFAULT NULL,
  `dteffdate` date DEFAULT NULL,
  `cappnm` char(40) DEFAULT NULL,
  `dtappdt` date DEFAULT NULL,
  `cmemo1` char(250) DEFAULT NULL,
  `cmemo2` char(250) DEFAULT NULL,
  `cmemo3` char(250) DEFAULT NULL,
  `cppin` char(23) DEFAULT NULL,
  `cparpn` char(20) DEFAULT NULL,
  `cpprovpin` char(15) DEFAULT NULL,
  `cptdn` char(30) DEFAULT NULL,
  `cusercode` char(20) DEFAULT NULL,
  `dttransdt` date DEFAULT NULL,
  `ctranstm` char(8) DEFAULT NULL,
  `dtbacktaxdt` date DEFAULT NULL,
  `cexemptcode` char(3) DEFAULT NULL,
  `cbldgpin` char(23) DEFAULT NULL,
  `cactuse` char(20) DEFAULT NULL,
  `cdetcode` char(3) DEFAULT NULL,
  `ftdepmval` double DEFAULT NULL,
  `fasslev` float DEFAULT NULL,
  `ftassval` float(13,2) DEFAULT NULL,
  `cisprovtrans` char(1) DEFAULT NULL,
  KEY `ix150_3` (`cprovpin`),
  KEY `ix150_1` (`cpin`),
  KEY `ix150_2` (`carpn`),
  KEY `ix276_6` (`cowncode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 8192 kB';

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
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uuid`)
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
  `datetime_created` datetime NOT NULL,
  KEY `property_uuid` (`property_uuid`),
  KEY `user_uuid` (`user_uuid`)
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
  `new_memoranda` varchar(255) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `account_number` int(7) NOT NULL AUTO_INCREMENT,
  `owncode` int(11) unsigned NOT NULL,
  `grouping_uuid` varchar(80) DEFAULT NULL,
  `migrate_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`account_number`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `account_number` (`account_number`),
  KEY `municipality_uuid` (`municipality_uuid`),
  KEY `province_uuid` (`province_uuid`),
  KEY `grouping_uuid` (`grouping_uuid`),
  KEY `lastname` (`lastname`),
  KEY `middlename` (`middlename`),
  KEY `firstname` (`firstname`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47635 ;

-- --------------------------------------------------------

--
-- Table structure for table `owner_groups`
--

CREATE TABLE IF NOT EXISTS `owner_groups` (
  `uuid` varchar(80) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parent_pin`
--

CREATE TABLE IF NOT EXISTS `parent_pin` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `datetime_created` datetime NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `ctranstype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `owner_uuid` (`owner_uuid`)
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
  `check_amount` decimal(15,2) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `or_no` (`or_no`),
  KEY `check_no` (`check_no`)
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
  `discount` varchar(80) NOT NULL,
  `penalty` varchar(80) NOT NULL,
  `amount` varchar(80) NOT NULL,
  `total` varchar(80) NOT NULL,
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
  `cusercode` varchar(255) DEFAULT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `property_uuid` (`property_uuid`),
  KEY `or_no` (`or_no`),
  KEY `user_uuid` (`user_uuid`),
  KEY `pin` (`pin`),
  KEY `arp_no` (`arp_no`(767)),
  KEY `account_number` (`account_number`),
  KEY `term` (`term`),
  KEY `term_2` (`term`),
  KEY `status` (`status`),
  KEY `qtr_to` (`qtr_to`),
  KEY `qtr_from` (`qtr_from`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `physical_change`
--

CREATE TABLE IF NOT EXISTS `physical_change` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `details` varchar(255) NOT NULL,
  `quotation` varchar(100) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `transaction_uuid` varchar(36) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library`
--

CREATE TABLE IF NOT EXISTS `pin_library` (
  `uuid` varchar(80) NOT NULL,
  `index_no` varchar(80) NOT NULL,
  `location` varchar(20) NOT NULL,
  `region` varchar(155) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library_barangay`
--

CREATE TABLE IF NOT EXISTS `pin_library_barangay` (
  `uuid` varchar(80) NOT NULL,
  `index_num` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `municipality_uuid` varchar(80) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `municipality_uuid` (`municipality_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library_city`
--

CREATE TABLE IF NOT EXISTS `pin_library_city` (
  `uuid` varchar(80) NOT NULL,
  `index_num` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `region_uuid` varchar(80) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `region_uuid` (`region_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library_municipality`
--

CREATE TABLE IF NOT EXISTS `pin_library_municipality` (
  `uuid` varchar(80) NOT NULL,
  `index_num` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `province_uuid` varchar(80) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `province_uuid` (`province_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library_province`
--

CREATE TABLE IF NOT EXISTS `pin_library_province` (
  `uuid` varchar(80) NOT NULL,
  `index_num` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `region_uuid` varchar(80) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `region_uuid` (`region_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_library_section`
--

CREATE TABLE IF NOT EXISTS `pin_library_section` (
  `uuid` varchar(80) NOT NULL,
  `index_num` int(3) unsigned zerofill NOT NULL,
  `human_name` varchar(50) NOT NULL,
  `barangay_uuid` varchar(80) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `barangay_uuid` (`barangay_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proc_requirements`
--

CREATE TABLE IF NOT EXISTS `proc_requirements` (
  `uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`uuid`)
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
  `active` tinyint(1) DEFAULT '0',
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `pin` (`pin`),
  KEY `property_type_uuid` (`property_type_uuid`),
  KEY `main_owner_uuid` (`main_owner_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `properties_2`
--
CREATE TABLE IF NOT EXISTS `properties_2` (
`pin` char(23)
,`property_type_uuid` varchar(36)
,`cowncode` char(7)
);
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
  `migrate_flag` tinyint(1) unsigned DEFAULT '0',
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_time` time NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `ctranstm` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`),
  KEY `building_pin` (`building_pin`),
  KEY `land_pin` (`land_pin`)
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
  `ctranstm` varchar(50) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `usercode` varchar(32) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `property_uuid` (`property_uuid`),
  KEY `location_brgy_uuid` (`location_brgy_uuid`),
  KEY `location_municipality_uuid` (`location_municipality_uuid`),
  KEY `location_province_uuid` (`location_province_uuid`)
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
  `tax_effectivity` date NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  PRIMARY KEY (`property_uuid`)
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
  `rec_legit` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `uuid` (`uuid`),
  KEY `owner_uuid` (`owner_uuid`),
  KEY `property_uuid` (`property_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_requirements`
--

CREATE TABLE IF NOT EXISTS `property_requirements` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `requirement_uuid` varchar(80) NOT NULL,
  `status` varchar(1) NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `property_uuid` (`property_uuid`),
  KEY `requirement_uuid` (`requirement_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_tax_declaration`
--

CREATE TABLE IF NOT EXISTS `property_tax_declaration` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `delinq_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `memoranda` text,
  `active` tinyint(2) DEFAULT NULL,
  `date_applied` datetime DEFAULT NULL,
  `updated_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  PRIMARY KEY (`delinq_id`),
  KEY `loc_barangay_uuid` (`loc_barangay_uuid`),
  KEY `uuid` (`uuid`),
  KEY `property_index_no` (`property_index_no`),
  KEY `dated` (`dated`),
  KEY `effectivity_year` (`effectivity_year`),
  KEY `classification_uuid` (`classification_uuid`),
  KEY `property_kind_uuid` (`property_kind_uuid`),
  KEY `loc_province_uuid` (`loc_province_uuid`),
  KEY `loc_municipality_uuid` (`loc_municipality_uuid`),
  KEY `administrator_province_uuid` (`administrator_province_uuid`),
  KEY `administrator_municipality_uuid` (`administrator_municipality_uuid`),
  KEY `administrator_barangay_uuid` (`administrator_barangay_uuid`),
  KEY `owner_province_uuid` (`owner_province_uuid`),
  KEY `owner_municipality_uuid` (`owner_municipality_uuid`),
  KEY `owner_barangay_uuid` (`owner_barangay_uuid`),
  KEY `effectivity_quarter` (`effectivity_quarter`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=562016 ;

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE IF NOT EXISTS `property_type` (
  `uuid` varchar(80) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `uuid` (`uuid`),
  KEY `uuid_2` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ref_bldg_ass`
--

CREATE TABLE IF NOT EXISTS `ref_bldg_ass` (
  `cgrcode` char(3) DEFAULT NULL,
  `cactualuse` char(12) DEFAULT NULL,
  `fminrange` float(13,2) DEFAULT NULL,
  `fmaxrange` float DEFAULT NULL,
  `fasslevel` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref_bldg_comp`
--

CREATE TABLE IF NOT EXISTS `ref_bldg_comp` (
  `cgrcode` char(3) DEFAULT NULL,
  `ccompcode` char(4) DEFAULT NULL,
  `ccompdesc` char(150) DEFAULT NULL,
  `fpercentprice01` float DEFAULT NULL,
  `fpercentprice02` float DEFAULT NULL,
  `fpercentprice03` float DEFAULT NULL,
  `ipercent` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref_owners`
--

CREATE TABLE IF NOT EXISTS `ref_owners` (
  `cowncode` char(7) DEFAULT NULL,
  `cprovowncode` char(10) DEFAULT NULL,
  `cln` char(120) DEFAULT NULL,
  `cfn` char(50) DEFAULT NULL,
  `cmi` char(1) DEFAULT NULL,
  `caddr` char(75) DEFAULT NULL,
  `cbgy` char(30) DEFAULT NULL,
  `cmun` char(30) DEFAULT NULL,
  `cprov` char(30) DEFAULT NULL,
  `cphone` char(20) DEFAULT NULL,
  `czip` char(10) DEFAULT NULL,
  `cemail` char(50) DEFAULT NULL,
  KEY `ix111_1` (`cowncode`),
  KEY `ix111_2` (`cln`),
  KEY `ix111_4` (`cmi`),
  KEY `ix130_2` (`cprovowncode`),
  KEY `i_lnfn` (`cln`,`cfn`),
  KEY `ix111_3` (`cfn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref_tax_credit`
--

CREATE TABLE IF NOT EXISTS `ref_tax_credit` (
  `cowncode` char(7) DEFAULT NULL,
  `corseries` char(4) DEFAULT NULL,
  `corn` char(10) DEFAULT NULL,
  `ftaxdebit` float DEFAULT NULL,
  `ftaxcredit` float DEFAULT NULL,
  `ctranstype` char(20) DEFAULT NULL,
  `dttransdate` date DEFAULT NULL,
  KEY `ix167_1` (`cowncode`),
  KEY `ix167_3` (`corn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref_trans_prov`
--

CREATE TABLE IF NOT EXISTS `ref_trans_prov` (
  `cpin` char(23) DEFAULT NULL,
  `iyear` int(11) DEFAULT NULL,
  `cclass` char(1) DEFAULT NULL,
  `fadjmval` decimal(15,2) DEFAULT NULL,
  `fassval` decimal(15,2) DEFAULT NULL,
  `fasslev` float DEFAULT NULL
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
  `date` date NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `src_actual_use`
--

CREATE TABLE IF NOT EXISTS `src_actual_use` (
  `uuid` varchar(80) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`uuid`)
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
  `assessment_level` int(15) DEFAULT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `actual_use_uuid` (`actual_use_uuid`)
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
  `amount` decimal(15,2) DEFAULT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `structure_uuid` (`structure_uuid`),
  KEY `building_class` (`building_class`),
  KEY `building_type_uuid` (`building_type_uuid`)
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
  `mark_percent` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `uuid` (`uuid`)
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
  `fageto` int(11) DEFAULT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `structure_uuid` (`structure_uuid`),
  KEY `building_class` (`building_class`),
  KEY `building_type_uuid` (`building_type_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `src_building_structure`
--

CREATE TABLE IF NOT EXISTS `src_building_structure` (
  `uuid` varchar(80) NOT NULL,
  `structure_code` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `src_building_type`
--

CREATE TABLE IF NOT EXISTS `src_building_type` (
  `uuid` varchar(80) NOT NULL,
  `type_code` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  UNIQUE KEY `uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `src_machine_assessment`
--

CREATE TABLE IF NOT EXISTS `src_machine_assessment` (
  `uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `actual_use_uuid` varchar(80) CHARACTER SET latin1 NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `actual_use_uuid` (`actual_use_uuid`)
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
-- Table structure for table `sys_or_ihist`
--

CREATE TABLE IF NOT EXISTS `sys_or_ihist` (
  `cteller` char(20) DEFAULT NULL,
  `corseries` char(4) DEFAULT NULL,
  `iorfrom` int(11) DEFAULT NULL,
  `iorto` int(11) DEFAULT NULL,
  `dthistdate` date DEFAULT NULL,
  `cinvstatus` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 108`
--

CREATE TABLE IF NOT EXISTS `TABLE 108` (
  `COL 1` varchar(36) DEFAULT NULL,
  `COL 2` varchar(18) DEFAULT NULL,
  `COL 3` varchar(23) DEFAULT NULL,
  `COL 4` varchar(23) DEFAULT NULL,
  `COL 5` varchar(14) DEFAULT NULL,
  `COL 6` int(5) DEFAULT NULL,
  `COL 7` decimal(6,2) DEFAULT NULL,
  `COL 8` decimal(11,2) DEFAULT NULL,
  `COL 9` varchar(12) DEFAULT NULL,
  `COL 10` varchar(3) DEFAULT NULL,
  `COL 11` decimal(11,2) DEFAULT NULL,
  `COL 12` int(2) DEFAULT NULL,
  `COL 13` varchar(480) DEFAULT NULL,
  `COL 14` varchar(1) DEFAULT NULL,
  `COL 15` varchar(3) DEFAULT NULL,
  `COL 16` varchar(10) DEFAULT NULL,
  `COL 17` varchar(2) DEFAULT NULL,
  `COL 18` varchar(16) DEFAULT NULL,
  `COL 19` varchar(51) DEFAULT NULL,
  `COL 20` varchar(92) DEFAULT NULL,
  `COL 21` int(3) DEFAULT NULL,
  `COL 22` varchar(6) DEFAULT NULL,
  `COL 23` varchar(10) DEFAULT NULL,
  `COL 24` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_machine_appraisal`
--

CREATE TABLE IF NOT EXISTS `temp_machine_appraisal` (
  `uuid` varchar(80) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `details_uuid` varchar(80) NOT NULL,
  `description` varchar(255) NOT NULL,
  `no_units` varchar(255) NOT NULL,
  `acquisition_cost` varchar(255) NOT NULL,
  `conversion` varchar(255) NOT NULL,
  `freight` decimal(15,2) NOT NULL,
  `insurance` decimal(15,2) NOT NULL,
  `price_index` varchar(255) NOT NULL,
  `rcn` varchar(255) NOT NULL,
  `depreciation` varchar(255) NOT NULL,
  `depreciation_market_val` decimal(15,2) NOT NULL,
  `market_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_property_details_machine`
--

CREATE TABLE IF NOT EXISTS `temp_property_details_machine` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `arp_no` varchar(200) NOT NULL,
  `land_pin` varchar(100) NOT NULL,
  `bldg_pin` varchar(100) NOT NULL,
  `machine_pin` varchar(100) NOT NULL,
  `loc_street` varchar(255) NOT NULL,
  `loc_barangay_uuid` varchar(80) NOT NULL,
  `loc_municipality_uuid` varchar(80) NOT NULL,
  `loc_province_uuid` varchar(80) NOT NULL,
  `administrator_lastname` varchar(100) NOT NULL,
  `administrator_firstname` varchar(100) NOT NULL,
  `administrator_middlename` varchar(100) NOT NULL,
  `administrator_telno` varchar(100) NOT NULL,
  `administrator_street` varchar(100) NOT NULL,
  `administrator_barangay_uuid` varchar(80) NOT NULL,
  `administrator_municipality_uuid` varchar(80) NOT NULL,
  `administrator_province_uuid` varchar(80) NOT NULL,
  `description` varchar(255) NOT NULL,
  `brand_model` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `estimated` varchar(100) NOT NULL,
  `remaining` varchar(100) NOT NULL,
  `date_acquired` date NOT NULL,
  `date_installation` date NOT NULL,
  `date_operation` date NOT NULL,
  `memoranda` text NOT NULL,
  `total_assessed_value` decimal(15,2) NOT NULL,
  `previous_owner` varchar(80) NOT NULL,
  `taxability` decimal(15,2) NOT NULL,
  `tax_effectivity` date NOT NULL,
  `no_units` int(11) NOT NULL,
  `acquisition_cost` decimal(15,2) NOT NULL,
  `freight` varchar(100) NOT NULL,
  `insurance` varchar(100) NOT NULL,
  `depreciation` varchar(100) NOT NULL,
  `depreciation_market_val` decimal(15,2) NOT NULL,
  `market_value` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_property_details_machine_main`
--

CREATE TABLE IF NOT EXISTS `temp_property_details_machine_main` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `arp_no` varchar(200) NOT NULL,
  `land_pin` varchar(100) NOT NULL,
  `bldg_pin` varchar(100) NOT NULL,
  `machine_pin` varchar(100) NOT NULL,
  `loc_street` varchar(255) NOT NULL,
  `loc_barangay_uuid` varchar(80) NOT NULL,
  `loc_municipality_uuid` varchar(80) NOT NULL,
  `loc_province_uuid` varchar(80) NOT NULL,
  `administrator_lastname` varchar(100) NOT NULL,
  `administrator_firstname` varchar(100) NOT NULL,
  `administrator_middlename` varchar(100) NOT NULL,
  `administrator_telno` varchar(100) NOT NULL,
  `administrator_street` varchar(100) NOT NULL,
  `administrator_barangay_uuid` varchar(80) NOT NULL,
  `administrator_municipality_uuid` varchar(80) NOT NULL,
  `administrator_province_uuid` varchar(80) NOT NULL,
  `description` varchar(255) NOT NULL,
  `brand_model` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `estimated` varchar(100) NOT NULL,
  `remaining` varchar(100) NOT NULL,
  `date_acquired` date NOT NULL,
  `date_installation` date NOT NULL,
  `date_operation` date NOT NULL,
  `memoranda` text NOT NULL,
  `total_assessed_value` decimal(15,2) NOT NULL,
  `previous_owner` varchar(80) NOT NULL,
  `taxability` decimal(15,2) NOT NULL,
  `tax_effectivity` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_user_serial`
--

CREATE TABLE IF NOT EXISTS `temp_user_serial` (
  `uuid` varchar(200) NOT NULL,
  `user_uuid` varchar(80) NOT NULL,
  `user_code` varchar(100) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `isempty` tinyint(2) NOT NULL DEFAULT '0',
  `action` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `user_uuid` (`user_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `total_machine_appraisal`
--

CREATE TABLE IF NOT EXISTS `total_machine_appraisal` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `total_no_units` varchar(100) NOT NULL,
  `total_acquisition_cost` varchar(100) NOT NULL,
  `total_conversion` varchar(100) NOT NULL,
  `total_price_index` varchar(100) NOT NULL,
  `total_rcn` varchar(100) NOT NULL,
  `total_depreciation` varchar(100) NOT NULL,
  `total_market_value` varchar(100) NOT NULL,
  `freight` varchar(20) NOT NULL,
  `insurance` varchar(20) NOT NULL,
  `cdetcode` char(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `total_machine_appraisal_old`
--

CREATE TABLE IF NOT EXISTS `total_machine_appraisal_old` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `total_no_units` varchar(100) NOT NULL,
  `total_acquisition_cost` varchar(100) NOT NULL,
  `total_conversion` varchar(100) NOT NULL,
  `total_price_index` varchar(100) NOT NULL,
  `total_rcn` varchar(100) NOT NULL,
  `total_depreciation` varchar(100) NOT NULL,
  `total_market_value` varchar(100) NOT NULL,
  `freight` varchar(20) NOT NULL,
  `insurance` varchar(20) NOT NULL,
  `cedetcode` char(3) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `property_uuid` (`property_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `transactions_uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) DEFAULT NULL,
  `transaction_number` int(100) NOT NULL AUTO_INCREMENT,
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
  `migrate_flag` tinyint(1) unsigned DEFAULT '0',
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `updated_date` date NOT NULL,
  `updated_time` time NOT NULL,
  `approved_date` date NOT NULL,
  `approved_time` time NOT NULL,
  PRIMARY KEY (`transaction_number`),
  UNIQUE KEY `transactions_uuid` (`transactions_uuid`),
  KEY `property_uuid` (`property_uuid`),
  KEY `arp_no` (`arp_no`),
  KEY `or_no` (`or_no`),
  KEY `status` (`status`),
  KEY `transaction_type` (`transaction_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89967 ;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE IF NOT EXISTS `transaction_history` (
  `uuid` varchar(80) NOT NULL,
  `property_uuid` varchar(80) NOT NULL,
  `user_uuid` varchar(80) NOT NULL,
  `data` text NOT NULL,
  `datetime_created` datetime NOT NULL,
  `prev_pin` varchar(40) NOT NULL,
  `new_pin` varchar(40) NOT NULL,
  `prev_owner` varchar(36) NOT NULL,
  `new_owner` varchar(36) NOT NULL,
  `trans_uuid` varchar(36) NOT NULL,
  `prev_arpn` varchar(20) NOT NULL,
  `nw_arpn` varchar(20) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `user_uuid` (`user_uuid`),
  KEY `property_uuid` (`property_uuid`)
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
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `name` (`name`)
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
  `active` tinyint(2) NOT NULL,
  UNIQUE KEY `uuid` (`uuid`),
  KEY `user_type_id` (`user_type_id`)
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
  `hasdelete` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `module_uuid` (`module_uuid`),
  KEY `user_uuid` (`user_uuid`)
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
  `action` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `user_uuid` (`user_uuid`)
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
  `action` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `user_uuid` (`user_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `uuid` varchar(80) NOT NULL,
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Structure for view `properties_2`
--
DROP TABLE IF EXISTS `properties_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `properties_2` AS select `main_faas_bldg`.`cpin` AS `pin`,'aa1016a4-28f1-fbf1-d247-7c25df775e77' AS `property_type_uuid`,`main_faas_bldg`.`cowncode` AS `cowncode` from `main_faas_bldg` union select `main_faas_impr`.`cpin` AS `pin`,'dedd72f9-e30b-4592-d3de-6507aa6c27ed' AS `property_type_uuid`,`main_faas_impr`.`cowncode` AS `cowncode` from `main_faas_impr` union select `main_faas_land`.`cpin` AS `pin`,'3a9f736e-356a-1331-a2d0-f88191dc7a80' AS `property_type_uuid`,`main_faas_land`.`cowncode` AS `cowncode` from `main_faas_land` union select `main_faas_mach`.`cpin` AS `pin`,'e9df44e1-9ea5-a372-f7f8-7c73912ebf57' AS `property_type_uuid`,`main_faas_mach`.`cowncode` AS `cowncode` from `main_faas_mach`;

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
-- Constraints for table `land_addtl_details`
--
ALTER TABLE `land_addtl_details`
  ADD CONSTRAINT `land_addtl_details_ibfk_1` FOREIGN KEY (`pin`) REFERENCES `properties` (`pin`);

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
-- Constraints for table `property_details_improvement`
--
ALTER TABLE `property_details_improvement`
  ADD CONSTRAINT `property_details_improvement_ibfk_1` FOREIGN KEY (`property_uuid`) REFERENCES `properties` (`uuid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
