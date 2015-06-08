CREATE TABLE `retirement_details` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `property_uuid` char(36) NOT NULL,
  `transaction_uuid` char(36) NOT NULL,
  `cancellation_cause` text NOT NULL,
  `cancellation_remarks` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
