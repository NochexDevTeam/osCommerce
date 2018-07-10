/*

Nochex APC Payment Module (v0.1.1) for osCommerce
File generated by SQLyog Enterprise v4.07
*********************************************************************
*/


/*Table structure for table `nochex_apc_transactions` */

drop table if exists `nochex_apc_transactions`;

CREATE TABLE `nochex_apc_transactions` (
  `transaction_id` int(11) unsigned NOT NULL auto_increment,
  `nc_transaction_id` varchar(30) default '0',
  `nc_to_email` varchar(255) default '0',
  `nc_from_email` varchar(255) default '0',
  `nc_transaction_date` varchar(100) default '0',
  `nc_order_id` int(11) unsigned default '0',
  `nc_amount` decimal(15,2) default '0.00',
  `nc_security_key` varchar(255) default '0',
  `nc_status` varchar(15) default '0',
  `nochex_response` varchar(255) default '0',
  `record_updated` varchar(100) default '0',
  PRIMARY KEY  (`transaction_id`)
);



/********************************************************************
 DO NOT APPLY THE FOLLOWING TWO INSTRUCTIONS IF YOU ALREADY HAVE THIS 
 MODULE OR THE NOCHEX_APC COMMUNITY MODULE INSTALLED. YOU WILL END UP 
 WITH TWO LOTS OF EACH ORDER STATUS.
 ********************************************************************/

/*Table data for table `orders_status` */
INSERT INTO `orders_status` VALUES (50000, 1, 'Nochex Processing',0,0);
INSERT INTO `orders_status` VALUES (50001, 1, 'Nochex Authorised',0,0);