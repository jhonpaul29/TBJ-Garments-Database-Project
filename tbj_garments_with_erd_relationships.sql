-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2026 at 05:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tbj_garments`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `tbj_load_sample_data_1000_v1` ()   BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;
  START TRANSACTION;
  IF EXISTS (SELECT 1 FROM `carriers` WHERE `carrier_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `categories` WHERE `category_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `customers` WHERE `customer_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `suppliers` WHERE `supplier_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `taxes` WHERE `tax_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `products` WHERE `product_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `users` WHERE `user_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `audit_logs` WHERE `audit_log_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `discounts` WHERE `discount_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `forecast_runs` WHERE `forecast_run_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `product_variants` WHERE `product_variant_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `purchase_orders` WHERE `purchase_order_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `sales_orders` WHERE `sales_order_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `deliveries` WHERE `delivery_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `forecast_inputs` WHERE `forecast_run_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `payments` WHERE `payment_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `purchase_order_acknowledgments` WHERE `purchase_order_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `purchase_order_approvals` WHERE `purchase_order_approval_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `purchase_order_items` WHERE `purchase_order_item_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `sales` WHERE `sale_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `sales_order_discounts` WHERE `sales_order_discount_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `sales_order_items` WHERE `sales_order_item_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `stock_adjustments` WHERE `stock_adjustment_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `supplier_invoices` WHERE `supplier_invoice_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `supplier_items` WHERE `supplier_item_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `delivery_items` WHERE `delivery_item_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `delivery_tracking` WHERE `delivery_tracking_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `demand_forecasts` WHERE `demand_forecast_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `goods_receipts` WHERE `goods_receipt_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `replenishment_policies` WHERE `replenishment_policy_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `sales_payments` WHERE `sales_payment_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `stock_adjustment_approvals` WHERE `stock_adjustment_approval_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `stock_reservations` WHERE `stock_reservation_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `supplier_invoice_items` WHERE `supplier_invoice_item_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `goods_receipt_items` WHERE `goods_receipt_item_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `replenishment_recommendations` WHERE `replenishment_recommendation_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `tracking_events` WHERE `tracking_event_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `inspection_attachments` WHERE `inspection_attachment_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `invoice_receipt_allocations` WHERE `invoice_receipt_allocation_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `purchase_order_receipt_approvals` WHERE `receipt_approval_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `replenishment_reviews` WHERE `replenishment_recommendation_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF EXISTS (SELECT 1 FROM `stock_movements` WHERE `stock_movement_id` BETWEEN 9000001 AND 9001000) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID range is already occupied; no sample data was added';
  END IF;
  IF (SELECT COUNT(*) FROM `roles` WHERE (role_id=1 AND role_code='administrator') OR (role_id=3 AND role_code='inventory') OR (role_id=5 AND role_code='supplier') OR (role_id=6 AND role_code='hr')) <> 4 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Install the current TBJ Garments lookup records first';
  END IF;
  INSERT INTO `carriers` (`carrier_id`, `status_id`, `carrier_code`, `carrier_name`) VALUES
    (9000001, 1, 'INHOUSE', 'TBJ Delivery Team'),
    (9000002, 1, 'COURIER1', 'Parcel Courier One'),
    (9000003, 1, 'COURIER2', 'Parcel Courier Two');
  INSERT INTO `categories` (`category_id`, `status_id`, `category_name`) VALUES
    (9000001, 1, 'T-Shirts'),
    (9000002, 1, 'Polo Shirts'),
    (9000003, 1, 'Blouses'),
    (9000004, 1, 'Trousers'),
    (9000005, 1, 'Dresses'),
    (9000006, 1, 'Outerwear');
  INSERT INTO `customers` (`customer_id`, `status_id`, `customer_code`, `customer_name`, `email_address`, `phone_number`, `address`) VALUES
    (9000001, 1, 'CUS-0001', 'Alex Customer', 'customer1@tbj.test', NULL, 'Delivery Address 1, Cagayan de Oro City, Philippines'),
    (9000002, 1, 'CUS-0002', 'Bea Customer', 'customer2@tbj.test', NULL, 'Delivery Address 2, Cagayan de Oro City, Philippines'),
    (9000003, 1, 'CUS-0003', 'Carlo Customer', 'customer3@tbj.test', NULL, 'Delivery Address 3, Cagayan de Oro City, Philippines'),
    (9000004, 1, 'CUS-0004', 'Dana Customer', 'customer4@tbj.test', NULL, 'Delivery Address 4, Cagayan de Oro City, Philippines'),
    (9000005, 1, 'CUS-0005', 'Eli Customer', 'customer5@tbj.test', NULL, 'Delivery Address 5, Cagayan de Oro City, Philippines'),
    (9000006, 1, 'CUS-0006', 'Faith Customer', 'customer6@tbj.test', NULL, 'Delivery Address 6, Cagayan de Oro City, Philippines'),
    (9000007, 1, 'CUS-0007', 'Gio Customer', 'customer7@tbj.test', NULL, 'Delivery Address 7, Cagayan de Oro City, Philippines'),
    (9000008, 1, 'CUS-0008', 'Hana Customer', 'customer8@tbj.test', NULL, 'Delivery Address 8, Cagayan de Oro City, Philippines'),
    (9000009, 1, 'CUS-0009', 'Ivan Customer', 'customer9@tbj.test', NULL, 'Delivery Address 9, Cagayan de Oro City, Philippines'),
    (9000010, 1, 'CUS-0010', 'Jade Customer', 'customer10@tbj.test', NULL, 'Delivery Address 10, Cagayan de Oro City, Philippines'),
    (9000011, 1, 'CUS-0011', 'Kai Customer', 'customer11@tbj.test', NULL, 'Delivery Address 11, Cagayan de Oro City, Philippines'),
    (9000012, 1, 'CUS-0012', 'Lara Customer', 'customer12@tbj.test', NULL, 'Delivery Address 12, Cagayan de Oro City, Philippines'),
    (9000013, 1, 'CUS-0013', 'Mika Customer', 'customer13@tbj.test', NULL, 'Delivery Address 13, Cagayan de Oro City, Philippines'),
    (9000014, 1, 'CUS-0014', 'Noah Customer', 'customer14@tbj.test', NULL, 'Delivery Address 14, Cagayan de Oro City, Philippines'),
    (9000015, 1, 'CUS-0015', 'Owen Customer', 'customer15@tbj.test', NULL, 'Delivery Address 15, Cagayan de Oro City, Philippines'),
    (9000016, 1, 'CUS-0016', 'Pia Customer', 'customer16@tbj.test', NULL, 'Delivery Address 16, Cagayan de Oro City, Philippines'),
    (9000017, 1, 'CUS-0017', 'Quinn Customer', 'customer17@tbj.test', NULL, 'Delivery Address 17, Cagayan de Oro City, Philippines'),
    (9000018, 1, 'CUS-0018', 'Ria Customer', 'customer18@tbj.test', NULL, 'Delivery Address 18, Cagayan de Oro City, Philippines'),
    (9000019, 1, 'CUS-0019', 'Sam Customer', 'customer19@tbj.test', NULL, 'Delivery Address 19, Cagayan de Oro City, Philippines'),
    (9000020, 1, 'CUS-0020', 'Toni Customer', 'customer20@tbj.test', NULL, 'Delivery Address 20, Cagayan de Oro City, Philippines');
  INSERT INTO `suppliers` (`supplier_id`, `status_id`, `supplier_code`, `supplier_name`, `contact_name`, `email_address`, `phone_number`, `address`) VALUES
    (9000001, 1, 'SUP-0001', 'Mindanao Apparel Supply', 'Supplier Contact 1', 'supplier1@tbj.test', NULL, 'Business Address 1, Cagayan de Oro City, Philippines'),
    (9000002, 1, 'SUP-0002', 'Northern Style Clothing', 'Supplier Contact 2', 'supplier2@tbj.test', NULL, 'Business Address 2, Cagayan de Oro City, Philippines'),
    (9000003, 1, 'SUP-0003', 'Metro Readywear Trading', 'Supplier Contact 3', 'supplier3@tbj.test', NULL, 'Business Address 3, Cagayan de Oro City, Philippines'),
    (9000004, 1, 'SUP-0004', 'Summit Clothing Distribution', 'Supplier Contact 4', 'supplier4@tbj.test', NULL, 'Business Address 4, Cagayan de Oro City, Philippines'),
    (9000005, 1, 'SUP-0005', 'Coastal Apparel Wholesale', 'Supplier Contact 5', 'supplier5@tbj.test', NULL, 'Business Address 5, Cagayan de Oro City, Philippines');
  INSERT INTO `taxes` (`tax_id`, `status_id`, `tax_code`, `tax_name`, `tax_treatment`, `vat_rate`, `date_effective_start`, `date_effective_end`) VALUES
    (9000001, 1, 'VAT12-0001', 'Sample VAT 12 percent', 'vatable', 0.12, '2026-01-01', NULL),
    (9000002, 1, 'EXEMPT-0001', 'Sample VAT exempt', 'exempt', 0, '2026-01-01', NULL),
    (9000003, 1, 'ZERO-0001', 'Sample zero rated', 'zero_rated', 0, '2026-01-01', NULL);
  INSERT INTO `products` (`product_id`, `category_id`, `status_id`, `item_code`, `product_name`, `style_code`, `item_type`) VALUES
    (9000001, 9000001, 1, 'ITEM-0001', 'Classic Crew Neck', 'STYLE-0001', 'T-shirt'),
    (9000002, 9000001, 1, 'ITEM-0002', 'Relaxed Fit Tee', 'STYLE-0002', 'T-shirt'),
    (9000003, 9000001, 1, 'ITEM-0003', 'V Neck Essential', 'STYLE-0003', 'T-shirt'),
    (9000004, 9000002, 1, 'ITEM-0004', 'Everyday Polo', 'STYLE-0004', 'Polo shirt'),
    (9000005, 9000002, 1, 'ITEM-0005', 'Pique Office Polo', 'STYLE-0005', 'Polo shirt'),
    (9000006, 9000002, 1, 'ITEM-0006', 'Performance Polo', 'STYLE-0006', 'Polo shirt'),
    (9000007, 9000003, 1, 'ITEM-0007', 'Pleated Office Blouse', 'STYLE-0007', 'Blouse'),
    (9000008, 9000003, 1, 'ITEM-0008', 'Casual Linen Blouse', 'STYLE-0008', 'Blouse'),
    (9000009, 9000004, 1, 'ITEM-0009', 'Straight Fit Chino', 'STYLE-0009', 'Trousers'),
    (9000010, 9000004, 1, 'ITEM-0010', 'Tapered Office Trousers', 'STYLE-0010', 'Trousers'),
    (9000011, 9000004, 1, 'ITEM-0011', 'Relaxed Denim Jeans', 'STYLE-0011', 'Jeans'),
    (9000012, 9000005, 1, 'ITEM-0012', 'Everyday Midi Dress', 'STYLE-0012', 'Dress'),
    (9000013, 9000005, 1, 'ITEM-0013', 'Casual Shift Dress', 'STYLE-0013', 'Dress'),
    (9000014, 9000006, 1, 'ITEM-0014', 'Zip Front Jacket', 'STYLE-0014', 'Jacket'),
    (9000015, 9000006, 1, 'ITEM-0015', 'Lightweight Cardigan', 'STYLE-0015', 'Cardigan'),
    (9000016, 9000006, 1, 'ITEM-0016', 'Pullover Hoodie', 'STYLE-0016', 'Hoodie');
  INSERT INTO `users` (`user_id`, `role_id`, `supplier_id`, `status_id`, `full_name`, `email_address`, `password_hash`, `date_created`) VALUES
    (9000001, 1, NULL, 1, 'Owner One', 'owner@tbj.test', '$2y$12$Rl2zwSTZ3cUrewI7IPu3nOTLpoVBHhxyLw7lh/maQR8q49jjtbEjy', '2026-01-01'),
    (9000002, 1, NULL, 1, 'Owner Two', 'owner2@tbj.test', '$2y$12$VFIevoJmAWHASunS8xJzHeahsVxU8p3xV0KyZhVANqKUqi/ZywPw6', '2026-01-01'),
    (9000003, 6, NULL, 1, 'HR Supervisor', 'hr@tbj.test', '$2y$12$fMHb.mpDanpZFV/Tlhiu/OYtvJ0fGEa72Z6TL6jdkdBtell7YtsIq', '2026-01-01'),
    (9000004, 6, NULL, 1, 'HR Sales Coordinator', 'hr.sales@tbj.test', '$2y$12$RJDyIzMmTogy7fCPI0VEVeR8estyWORs6slOkpurmeFutPYtY3K/a', '2026-01-01'),
    (9000005, 6, NULL, 1, 'HR Operations Coordinator', 'hr.operations@tbj.test', '$2y$12$fMNyNQGUQekKJvPqfblgyupOHQou1JOB8kPTMU1QI3m4/brdWV.Da', '2026-01-01'),
    (9000006, 3, NULL, 1, 'Staff 1', 'staff1@tbj.test', '$2y$12$TkSnQLfmAoDN98nM.MKamexGKtrnmZs1fO68hua7AYWXrP6SuZR8y', '2026-01-01'),
    (9000007, 3, NULL, 1, 'Staff 2', 'staff2@tbj.test', '$2y$12$Kn.A3dgk0SbCaNuDP4RbA.Ail1Xnv7OFE0RRH8APjpz3LV6Y5EdgC', '2026-01-01'),
    (9000008, 3, NULL, 1, 'Staff 3', 'staff3@tbj.test', '$2y$12$OFnDi8gAGezHGIYlLxEpXeum4ds.QiiuoTGwPUDfUv5JNq3lmxmNe', '2026-01-01'),
    (9000009, 3, NULL, 1, 'Staff 4', 'staff4@tbj.test', '$2y$12$xTfMsN4sfKyzdTutP6/CyeqCSW6V1l92NrsS3umvT0b6I4okpAdu6', '2026-01-01'),
    (9000010, 5, 9000001, 1, 'Supplier User 1', 'vendor1@tbj.test', '$2y$12$UmHdOrv881vI39zQvDW8eOUM.KKLvnOJqCgbIqOWxU40QfERAWvvG', '2026-01-01'),
    (9000011, 5, 9000002, 1, 'Supplier User 2', 'vendor2@tbj.test', '$2y$12$1Qd1.6F.Pm19u3KEdCKP1uVBfrtWKG4.McP79Bw5qoaMK27MiZhD6', '2026-01-01'),
    (9000012, 5, 9000003, 1, 'Supplier User 3', 'vendor3@tbj.test', '$2y$12$Tcx8R0M0zkXiv8DcVVulpOuOJwNZrMOudg07.I.ArC3TBxZ7XfSUK', '2026-01-01'),
    (9000013, 5, 9000004, 1, 'Supplier User 4', 'vendor4@tbj.test', '$2y$12$4zn/7djSFw.4QG26nlta3O.n2l.ZAoH6TnWJ5NFJFmP/5FKE78kn6', '2026-01-01'),
    (9000014, 5, 9000005, 1, 'Supplier User 5', 'vendor5@tbj.test', '$2y$12$8SDaDWqU58z1JfJuidKvcu/T9bTBu6kXiJnSKU56LxWFeJpGfEnCq', '2026-01-01');
  INSERT INTO `audit_logs` (`audit_log_id`, `user_id`, `action_type`, `record_table`, `record_identifier`, `previous_values`, `updated_values`, `date_occurred`) VALUES
    (9000001, 9000003, 'purchase_order_created', 'purchase_orders', '9000001', NULL, '{"purchase_order_id": 9000001, "sample_record": true}', '2026-01-05 09:00:00'),
    (9000002, 9000003, 'purchase_order_created', 'purchase_orders', '9000002', NULL, '{"purchase_order_id": 9000002, "sample_record": true}', '2026-01-06 09:00:00'),
    (9000003, 9000003, 'purchase_order_created', 'purchase_orders', '9000003', NULL, '{"purchase_order_id": 9000003, "sample_record": true}', '2026-01-07 09:00:00'),
    (9000004, 9000003, 'purchase_order_created', 'purchase_orders', '9000004', NULL, '{"purchase_order_id": 9000004, "sample_record": true}', '2026-01-08 09:00:00'),
    (9000005, 9000003, 'purchase_order_created', 'purchase_orders', '9000005', NULL, '{"purchase_order_id": 9000005, "sample_record": true}', '2026-01-09 09:00:00'),
    (9000006, 9000003, 'purchase_order_created', 'purchase_orders', '9000006', NULL, '{"purchase_order_id": 9000006, "sample_record": true}', '2026-01-10 09:00:00'),
    (9000007, 9000003, 'purchase_order_created', 'purchase_orders', '9000007', NULL, '{"purchase_order_id": 9000007, "sample_record": true}', '2026-01-11 09:00:00'),
    (9000008, 9000003, 'purchase_order_created', 'purchase_orders', '9000008', NULL, '{"purchase_order_id": 9000008, "sample_record": true}', '2026-01-12 09:00:00'),
    (9000009, 9000003, 'purchase_order_created', 'purchase_orders', '9000009', NULL, '{"purchase_order_id": 9000009, "sample_record": true}', '2026-01-13 09:00:00'),
    (9000010, 9000003, 'purchase_order_created', 'purchase_orders', '9000010', NULL, '{"purchase_order_id": 9000010, "sample_record": true}', '2026-01-14 09:00:00'),
    (9000011, 9000003, 'purchase_order_created', 'purchase_orders', '9000011', NULL, '{"purchase_order_id": 9000011, "sample_record": true}', '2026-01-15 09:00:00'),
    (9000012, 9000003, 'purchase_order_created', 'purchase_orders', '9000012', NULL, '{"purchase_order_id": 9000012, "sample_record": true}', '2026-01-16 09:00:00'),
    (9000013, 9000003, 'purchase_order_created', 'purchase_orders', '9000013', NULL, '{"purchase_order_id": 9000013, "sample_record": true}', '2026-01-17 09:00:00'),
    (9000014, 9000003, 'purchase_order_created', 'purchase_orders', '9000014', NULL, '{"purchase_order_id": 9000014, "sample_record": true}', '2026-01-18 09:00:00'),
    (9000015, 9000003, 'purchase_order_created', 'purchase_orders', '9000015', NULL, '{"purchase_order_id": 9000015, "sample_record": true}', '2026-10-20 09:00:00'),
    (9000016, 9000004, 'sale_posted', 'sales', '9000001', NULL, '{"sale_id": 9000001, "sample_record": true}', '2026-02-05 10:00:00'),
    (9000017, 9000005, 'sale_posted', 'sales', '9000002', NULL, '{"sale_id": 9000002, "sample_record": true}', '2026-02-12 10:00:00'),
    (9000018, 9000003, 'sale_posted', 'sales', '9000003', NULL, '{"sale_id": 9000003, "sample_record": true}', '2026-02-19 10:00:00'),
    (9000019, 9000004, 'sale_posted', 'sales', '9000004', NULL, '{"sale_id": 9000004, "sample_record": true}', '2026-03-05 10:00:00'),
    (9000020, 9000005, 'sale_posted', 'sales', '9000005', NULL, '{"sale_id": 9000005, "sample_record": true}', '2026-03-12 10:00:00'),
    (9000021, 9000003, 'sale_posted', 'sales', '9000006', NULL, '{"sale_id": 9000006, "sample_record": true}', '2026-03-19 10:00:00'),
    (9000022, 9000004, 'sale_posted', 'sales', '9000007', NULL, '{"sale_id": 9000007, "sample_record": true}', '2026-04-05 10:00:00'),
    (9000023, 9000005, 'sale_posted', 'sales', '9000008', NULL, '{"sale_id": 9000008, "sample_record": true}', '2026-04-12 10:00:00'),
    (9000024, 9000003, 'sale_posted', 'sales', '9000009', NULL, '{"sale_id": 9000009, "sample_record": true}', '2026-04-19 10:00:00'),
    (9000025, 9000004, 'sale_posted', 'sales', '9000010', NULL, '{"sale_id": 9000010, "sample_record": true}', '2026-05-05 10:00:00'),
    (9000026, 9000005, 'sale_posted', 'sales', '9000011', NULL, '{"sale_id": 9000011, "sample_record": true}', '2026-05-12 10:00:00'),
    (9000027, 9000003, 'sale_posted', 'sales', '9000012', NULL, '{"sale_id": 9000012, "sample_record": true}', '2026-05-19 10:00:00'),
    (9000028, 9000004, 'sale_posted', 'sales', '9000013', NULL, '{"sale_id": 9000013, "sample_record": true}', '2026-06-05 10:00:00'),
    (9000029, 9000005, 'sale_posted', 'sales', '9000014', NULL, '{"sale_id": 9000014, "sample_record": true}', '2026-06-12 10:00:00'),
    (9000030, 9000003, 'sale_posted', 'sales', '9000015', NULL, '{"sale_id": 9000015, "sample_record": true}', '2026-06-19 10:00:00'),
    (9000031, 9000004, 'sale_posted', 'sales', '9000016', NULL, '{"sale_id": 9000016, "sample_record": true}', '2026-07-05 10:00:00'),
    (9000032, 9000005, 'sale_posted', 'sales', '9000017', NULL, '{"sale_id": 9000017, "sample_record": true}', '2026-07-12 10:00:00'),
    (9000033, 9000003, 'sale_posted', 'sales', '9000018', NULL, '{"sale_id": 9000018, "sample_record": true}', '2026-07-19 10:00:00'),
    (9000034, 9000004, 'sale_posted', 'sales', '9000019', NULL, '{"sale_id": 9000019, "sample_record": true}', '2026-08-05 10:00:00'),
    (9000035, 9000005, 'sale_posted', 'sales', '9000020', NULL, '{"sale_id": 9000020, "sample_record": true}', '2026-08-12 10:00:00'),
    (9000036, 9000003, 'sale_posted', 'sales', '9000021', NULL, '{"sale_id": 9000021, "sample_record": true}', '2026-08-19 10:00:00'),
    (9000037, 9000004, 'sale_posted', 'sales', '9000022', NULL, '{"sale_id": 9000022, "sample_record": true}', '2026-09-05 10:00:00'),
    (9000038, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000001', NULL, '{"replenishment_recommendation_id": 9000001, "sample_record": true}', '2026-10-20 09:00:00'),
    (9000039, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000002', NULL, '{"replenishment_recommendation_id": 9000002, "sample_record": true}', '2026-10-20 09:00:00'),
    (9000040, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000003', NULL, '{"replenishment_recommendation_id": 9000003, "sample_record": true}', '2026-10-20 09:00:00'),
    (9000041, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000004', NULL, '{"replenishment_recommendation_id": 9000004, "sample_record": true}', '2026-10-20 09:00:00'),
    (9000042, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000005', NULL, '{"replenishment_recommendation_id": 9000005, "sample_record": true}', '2026-10-20 09:00:00'),
    (9000043, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000006', NULL, '{"replenishment_recommendation_id": 9000006, "sample_record": true}', '2026-10-20 09:00:00'),
    (9000044, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000007', NULL, '{"replenishment_recommendation_id": 9000007, "sample_record": true}', '2026-10-20 09:00:00'),
    (9000045, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000008', NULL, '{"replenishment_recommendation_id": 9000008, "sample_record": true}', '2026-10-20 09:00:00'),
    (9000046, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000009', NULL, '{"replenishment_recommendation_id": 9000009, "sample_record": true}', '2026-10-01 09:00:00'),
    (9000047, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000010', NULL, '{"replenishment_recommendation_id": 9000010, "sample_record": true}', '2026-10-01 09:00:00'),
    (9000048, 9000003, 'stock_posted', 'stock_movements', '9000001', NULL, '{"stock_movement_id": 9000001, "sample_record": true}', '2026-01-03 09:05:00'),
    (9000049, 9000003, 'stock_posted', 'stock_movements', '9000002', NULL, '{"stock_movement_id": 9000002, "sample_record": true}', '2026-01-03 09:05:00'),
    (9000050, 9000003, 'stock_posted', 'stock_movements', '9000003', NULL, '{"stock_movement_id": 9000003, "sample_record": true}', '2026-01-03 09:05:00'),
    (9000051, 9000003, 'stock_posted', 'stock_movements', '9000004', NULL, '{"stock_movement_id": 9000004, "sample_record": true}', '2026-01-03 09:05:00'),
    (9000052, 9000003, 'stock_posted', 'stock_movements', '9000005', NULL, '{"stock_movement_id": 9000005, "sample_record": true}', '2026-01-03 09:05:00'),
    (9000053, 9000003, 'stock_posted', 'stock_movements', '9000006', NULL, '{"stock_movement_id": 9000006, "sample_record": true}', '2026-01-03 09:05:00'),
    (9000054, 9000003, 'stock_posted', 'stock_movements', '9000007', NULL, '{"stock_movement_id": 9000007, "sample_record": true}', '2026-01-03 09:05:00');
  INSERT INTO `discounts` (`discount_id`, `discount_type_id`, `status_id`, `user_id`, `discount_code`, `discount_name`, `discount_calculation_type`, `discount_value`, `minimum_order_amount`, `date_effective_start`, `date_effective_end`, `date_created`) VALUES
    (9000001, 1, 1, 9000001, 'DISC-0001', 'Holiday Special', 'percent', 10, 100.00, '2026-12-01 00:00:00', '2027-01-01 00:00:00', '2026-01-01'),
    (9000002, 2, 1, 9000001, 'DISC-0002', 'Verified Family Discount', 'percent', 10, 100.00, '2026-01-01 00:00:00', NULL, '2026-01-01'),
    (9000003, 3, 1, 9000001, 'DISC-0003', 'Regular Customer Promotion', 'percent', 5, 100.00, '2026-01-01 00:00:00', NULL, '2026-01-01');
  INSERT INTO `forecast_runs` (`forecast_run_id`, `user_id`, `forecast_method`, `model_version`, `model_parameters`, `date_training_start`, `date_training_end`, `date_source_cutoff`, `date_generated`, `forecast_status_id`) VALUES
    (9000001, 9000003, 'moving_average', 'ma-3month-v1', '{"window_periods": 3, "period": "month", "rounding": "ceiling", "example_data": true}', '2026-02-01', '2026-09-30', '2026-10-20 11:00:00', '2026-10-20 11:05:00', 2);
  INSERT INTO `product_variants` (`product_variant_id`, `product_id`, `status_id`, `stock_keeping_unit`, `size_code`, `color_code`, `selling_price`) VALUES
    (9000001, 9000001, 1, 'SKU-0001', 'M', 'NAVY', 399.00),
    (9000002, 9000001, 1, 'SKU-0002', 'L', 'BLACK', 419.00),
    (9000003, 9000002, 1, 'SKU-0003', 'M', 'NAVY', 499.00),
    (9000004, 9000002, 1, 'SKU-0004', 'L', 'BLACK', 519.00),
    (9000005, 9000003, 1, 'SKU-0005', 'M', 'NAVY', 599.00),
    (9000006, 9000003, 1, 'SKU-0006', 'L', 'BLACK', 619.00),
    (9000007, 9000004, 1, 'SKU-0007', 'M', 'NAVY', 699.00),
    (9000008, 9000004, 1, 'SKU-0008', 'L', 'BLACK', 719.00),
    (9000009, 9000005, 1, 'SKU-0009', 'M', 'NAVY', 799.00),
    (9000010, 9000005, 1, 'SKU-0010', 'L', 'BLACK', 819.00),
    (9000011, 9000006, 1, 'SKU-0011', 'M', 'NAVY', 299.00),
    (9000012, 9000006, 1, 'SKU-0012', 'L', 'BLACK', 319.00),
    (9000013, 9000007, 1, 'SKU-0013', 'M', 'NAVY', 399.00),
    (9000014, 9000007, 1, 'SKU-0014', 'L', 'BLACK', 419.00),
    (9000015, 9000008, 1, 'SKU-0015', 'M', 'NAVY', 499.00),
    (9000016, 9000008, 1, 'SKU-0016', 'L', 'BLACK', 519.00),
    (9000017, 9000009, 1, 'SKU-0017', 'M', 'NAVY', 599.00),
    (9000018, 9000009, 1, 'SKU-0018', 'L', 'BLACK', 619.00),
    (9000019, 9000010, 1, 'SKU-0019', 'M', 'NAVY', 699.00),
    (9000020, 9000010, 1, 'SKU-0020', 'L', 'BLACK', 719.00),
    (9000021, 9000011, 1, 'SKU-0021', 'M', 'NAVY', 799.00),
    (9000022, 9000011, 1, 'SKU-0022', 'L', 'BLACK', 819.00),
    (9000023, 9000012, 1, 'SKU-0023', 'M', 'NAVY', 299.00),
    (9000024, 9000012, 1, 'SKU-0024', 'L', 'BLACK', 319.00),
    (9000025, 9000013, 1, 'SKU-0025', 'M', 'NAVY', 399.00),
    (9000026, 9000013, 1, 'SKU-0026', 'L', 'BLACK', 419.00),
    (9000027, 9000014, 1, 'SKU-0027', 'M', 'NAVY', 499.00),
    (9000028, 9000014, 1, 'SKU-0028', 'L', 'BLACK', 519.00),
    (9000029, 9000015, 1, 'SKU-0029', 'M', 'NAVY', 599.00),
    (9000030, 9000015, 1, 'SKU-0030', 'L', 'BLACK', 619.00),
    (9000031, 9000016, 1, 'SKU-0031', 'M', 'NAVY', 699.00),
    (9000032, 9000016, 1, 'SKU-0032', 'L', 'BLACK', 719.00);
  INSERT INTO `purchase_orders` (`purchase_order_id`, `supplier_id`, `user_id`, `purchase_order_status_id`, `purchase_order_number`, `date_ordered`, `date_requested`, `date_promised`) VALUES
    (9000001, 9000001, 9000003, 5, 'PO-0001', '2026-01-05', '2026-01-13', '2026-01-12'),
    (9000002, 9000002, 9000003, 5, 'PO-0002', '2026-01-06', '2026-01-14', '2026-01-13'),
    (9000003, 9000003, 9000003, 5, 'PO-0003', '2026-01-07', '2026-01-15', '2026-01-14'),
    (9000004, 9000004, 9000003, 5, 'PO-0004', '2026-01-08', '2026-01-16', '2026-01-15'),
    (9000005, 9000005, 9000003, 5, 'PO-0005', '2026-01-09', '2026-01-17', '2026-01-16'),
    (9000006, 9000001, 9000003, 5, 'PO-0006', '2026-01-10', '2026-01-18', '2026-01-17'),
    (9000007, 9000002, 9000003, 5, 'PO-0007', '2026-01-11', '2026-01-19', '2026-01-18'),
    (9000008, 9000003, 9000003, 5, 'PO-0008', '2026-01-12', '2026-01-20', '2026-01-19'),
    (9000009, 9000004, 9000003, 5, 'PO-0009', '2026-01-13', '2026-01-21', '2026-01-20'),
    (9000010, 9000005, 9000003, 5, 'PO-0010', '2026-01-14', '2026-01-22', '2026-01-21'),
    (9000011, 9000001, 9000003, 3, 'PO-0011', '2026-01-15', '2026-01-23', '2026-01-22'),
    (9000012, 9000002, 9000003, 2, 'PO-0012', '2026-01-16', '2026-01-24', NULL),
    (9000013, 9000003, 9000003, 1, 'PO-0013', '2026-01-17', '2026-01-25', NULL),
    (9000014, 9000004, 9000003, 7, 'PO-0014', '2026-01-18', '2026-01-26', NULL),
    (9000015, 9000005, 9000003, 1, 'PO-0015', '2026-10-20', '2026-10-28', NULL);
  INSERT INTO `sales_orders` (`sales_order_id`, `customer_id`, `user_id`, `sales_order_number`, `date_ordered`, `date_required`, `order_status_id`, `delivery_address`) VALUES
    (9000001, 9000001, 9000004, 'SO-0001', '2026-02-05 09:00:00', '2026-02-10', 6, 'Delivery Address 1, Cagayan de Oro City, Philippines'),
    (9000002, 9000002, 9000005, 'SO-0002', '2026-02-12 09:00:00', '2026-02-17', 6, 'Delivery Address 2, Cagayan de Oro City, Philippines'),
    (9000003, 9000003, 9000003, 'SO-0003', '2026-02-19 09:00:00', '2026-02-24', 6, 'Delivery Address 3, Cagayan de Oro City, Philippines'),
    (9000004, 9000004, 9000004, 'SO-0004', '2026-03-05 09:00:00', '2026-03-10', 6, 'Delivery Address 4, Cagayan de Oro City, Philippines'),
    (9000005, 9000005, 9000005, 'SO-0005', '2026-03-12 09:00:00', '2026-03-17', 6, 'Delivery Address 5, Cagayan de Oro City, Philippines'),
    (9000006, 9000006, 9000003, 'SO-0006', '2026-03-19 09:00:00', '2026-03-24', 6, 'Delivery Address 6, Cagayan de Oro City, Philippines'),
    (9000007, 9000007, 9000004, 'SO-0007', '2026-04-05 09:00:00', '2026-04-10', 6, 'Delivery Address 7, Cagayan de Oro City, Philippines'),
    (9000008, 9000008, 9000005, 'SO-0008', '2026-04-12 09:00:00', '2026-04-17', 6, 'Delivery Address 8, Cagayan de Oro City, Philippines'),
    (9000009, 9000009, 9000003, 'SO-0009', '2026-04-19 09:00:00', '2026-04-24', 6, 'Delivery Address 9, Cagayan de Oro City, Philippines'),
    (9000010, 9000010, 9000004, 'SO-0010', '2026-05-05 09:00:00', '2026-05-10', 6, 'Delivery Address 10, Cagayan de Oro City, Philippines'),
    (9000011, 9000011, 9000005, 'SO-0011', '2026-05-12 09:00:00', '2026-05-17', 6, 'Delivery Address 11, Cagayan de Oro City, Philippines'),
    (9000012, 9000012, 9000003, 'SO-0012', '2026-05-19 09:00:00', '2026-05-24', 6, 'Delivery Address 12, Cagayan de Oro City, Philippines'),
    (9000013, 9000013, 9000004, 'SO-0013', '2026-06-05 09:00:00', '2026-06-10', 6, 'Delivery Address 13, Cagayan de Oro City, Philippines'),
    (9000014, 9000014, 9000005, 'SO-0014', '2026-06-12 09:00:00', '2026-06-17', 6, 'Delivery Address 14, Cagayan de Oro City, Philippines'),
    (9000015, 9000015, 9000003, 'SO-0015', '2026-06-19 09:00:00', '2026-06-24', 4, 'Delivery Address 15, Cagayan de Oro City, Philippines'),
    (9000016, 9000016, 9000004, 'SO-0016', '2026-07-05 09:00:00', '2026-07-10', 4, 'Delivery Address 16, Cagayan de Oro City, Philippines'),
    (9000017, 9000017, 9000005, 'SO-0017', '2026-07-12 09:00:00', '2026-07-17', 4, 'Delivery Address 17, Cagayan de Oro City, Philippines'),
    (9000018, 9000018, 9000003, 'SO-0018', '2026-07-19 09:00:00', '2026-07-24', 4, 'Delivery Address 18, Cagayan de Oro City, Philippines'),
    (9000019, 9000019, 9000004, 'SO-0019', '2026-08-05 09:00:00', '2026-08-10', 3, 'Delivery Address 19, Cagayan de Oro City, Philippines'),
    (9000020, 9000020, 9000005, 'SO-0020', '2026-08-12 09:00:00', '2026-08-17', 3, 'Delivery Address 20, Cagayan de Oro City, Philippines'),
    (9000021, 9000001, 9000003, 'SO-0021', '2026-08-19 09:00:00', '2026-08-24', 3, 'Delivery Address 1, Cagayan de Oro City, Philippines'),
    (9000022, 9000002, 9000004, 'SO-0022', '2026-09-05 09:00:00', '2026-09-10', 3, 'Delivery Address 2, Cagayan de Oro City, Philippines'),
    (9000023, 9000003, 9000005, 'SO-0023', '2026-09-12 09:00:00', '2026-09-17', 1, 'Delivery Address 3, Cagayan de Oro City, Philippines'),
    (9000024, 9000004, 9000003, 'SO-0024', '2026-09-19 09:00:00', '2026-09-24', 7, 'Delivery Address 4, Cagayan de Oro City, Philippines');
  INSERT INTO `deliveries` (`delivery_id`, `purchase_order_id`, `sales_order_id`, `user_id`, `delivery_number`, `qr_code_token_hash`, `date_expected`) VALUES
    (9000001, 9000001, NULL, 9000003, 'IN-0001', '6ba8f1e825f4e8ddf8b3a28e5a6695d17a76e8244617b49f5eb6c175685fa10e', '2026-01-10 17:00:00'),
    (9000002, 9000002, NULL, 9000003, 'IN-0002', 'def4234df2e11f86eab4b31f2cc7f1771acc631393826ef8130f848aca3b1037', '2026-01-11 17:00:00'),
    (9000003, 9000003, NULL, 9000003, 'IN-0003', '6d19188aa3b8ecfebeddd612821564877a99b28e014b8d8ae1af054c16e2ffa6', '2026-01-12 17:00:00'),
    (9000004, 9000004, NULL, 9000003, 'IN-0004', 'c477cf8323be15ecfb2e9bbddfcaa303e2d6306bfe4d8e890084b4f30d5dfe94', '2026-01-13 17:00:00'),
    (9000005, 9000005, NULL, 9000003, 'IN-0005', '6e8255c33a387e81808b6fb7beb72350725cb42da5bffd06b4c7850e39b5d0a4', '2026-01-14 17:00:00'),
    (9000006, 9000006, NULL, 9000003, 'IN-0006', '6b0a823cc4132f39918d45dfa1aee330108e69f077fff3641678ddfc3cb9a113', '2026-01-15 17:00:00'),
    (9000007, 9000007, NULL, 9000003, 'IN-0007', 'aa73946a8fdc716e04545b33cc452e19ce920de959e00b9ddb4df1009bdfb3dc', '2026-01-16 17:00:00'),
    (9000008, 9000008, NULL, 9000003, 'IN-0008', '92a4a6c23f62837309486f1669cf2a83b0ceb96c7dcf36c2e1b08ce237c9837b', '2026-01-17 17:00:00'),
    (9000009, 9000009, NULL, 9000003, 'IN-0009', 'e0b85d2ed25c44979a81b5000faff789693d11a1f73722523cd757de94a41019', '2026-01-18 17:00:00'),
    (9000010, 9000010, NULL, 9000003, 'IN-0010', '8d8467ef53f4b03bc8c8d49d2942edc449efc219538ff4fc1ae4589b79834081', '2026-01-19 17:00:00'),
    (9000011, NULL, 9000001, 9000003, 'OUT-0011', 'b77a621da32d23c4c7f65ad04a6d22d0a2ceef010522260179d48bdfcf7d1728', '2026-02-08 17:00:00'),
    (9000012, NULL, 9000002, 9000003, 'OUT-0012', 'c943205bfeab7973da57d31f0a8ba27cf8dafad4056b37aaaf0fc38996464795', '2026-02-15 17:00:00'),
    (9000013, NULL, 9000003, 9000003, 'OUT-0013', '445e518683e02519b539ea03b5b2d818d7248390964106a1bb6fa78ce19cab89', '2026-02-22 17:00:00'),
    (9000014, NULL, 9000004, 9000003, 'OUT-0014', '52c36daddbab07cff78bc8ec7755cccede6a690cc6ded5894593ba40bb3bc70f', '2026-03-08 17:00:00'),
    (9000015, NULL, 9000005, 9000003, 'OUT-0015', '6c6948f0801025cb95f1f162223c6af19fc57ae704c0a7f410f135a1c5e05df2', '2026-03-15 17:00:00'),
    (9000016, NULL, 9000006, 9000003, 'OUT-0016', 'cbc46def2c2f1e10a21617e1927c7237372fb4f5ab424a01b020e5aa1512872a', '2026-03-22 17:00:00'),
    (9000017, NULL, 9000007, 9000003, 'OUT-0017', '3f243fab16853f86d56a026666846890c82b9bcc23b0597987832bd93b8a46eb', '2026-04-08 17:00:00'),
    (9000018, NULL, 9000008, 9000003, 'OUT-0018', 'e8d19506648b9ed4c7064994d2b880bc703d36150e4562f1ed79b4b4e829361f', '2026-04-15 17:00:00'),
    (9000019, NULL, 9000009, 9000003, 'OUT-0019', 'b96aa7e1a43c6c48925f8b3b3e03e0a5e2cd0caf3d00ee307fa7c56ace28f93a', '2026-04-22 17:00:00'),
    (9000020, NULL, 9000010, 9000003, 'OUT-0020', '16550a763841cb1775afac5b668a16551d3c547a0301ca8989a68ebfc12bc3c4', '2026-05-08 17:00:00'),
    (9000021, NULL, 9000011, 9000003, 'OUT-0021', 'c32f1866a4c8407fbeb78cf217ff51fc5e49b772ce06126367e3057036b6c57b', '2026-05-15 17:00:00'),
    (9000022, NULL, 9000012, 9000003, 'OUT-0022', '7eaeb8250a82a27a628f2f6077c82f7a51e65d28b85679178a16478156680170', '2026-05-22 17:00:00'),
    (9000023, NULL, 9000013, 9000003, 'OUT-0023', '008b7e0892f145c2bb81381907251afb92f5933ff4827f792ad1551a012550cc', '2026-06-08 17:00:00'),
    (9000024, NULL, 9000014, 9000003, 'OUT-0024', '4a4435c5c9584bdacd4f38971ada4459544c56a5cef39467ed04509e2eb2aa46', '2026-06-15 17:00:00'),
    (9000025, NULL, 9000015, 9000003, 'OUT-0025', '88c4ff3f3a2ff31a61c4b47436c0b47870b3472b1565050821c32086fdd2ce54', '2026-06-22 17:00:00'),
    (9000026, NULL, 9000016, 9000003, 'OUT-0026', 'efa80d016c6d8a83843e9744077bea0d5cf86f358ae1be7f35afc20a9e4e1f1d', '2026-07-08 17:00:00'),
    (9000027, NULL, 9000017, 9000003, 'OUT-0027', '4d77a4091128371a7c528b230db77a82f5ef14515d0e452759aa93e052e53cd1', '2026-07-15 17:00:00'),
    (9000028, NULL, 9000018, 9000003, 'OUT-0028', 'ed94dc32189ee08b8f23595a64d8610ac452a7c874e765c8957521784892a5e6', '2026-07-22 17:00:00');
  INSERT INTO `forecast_inputs` (`forecast_run_id`, `product_variant_id`, `validation_mean_absolute_error`, `historical_demand_series`) VALUES
    (9000001, 9000001, 1.000, '[{"period":"2026-02","quantity":3},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":3},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000002, 1.333, '[{"period":"2026-02","quantity":4},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":4},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000003, 1.333, '[{"period":"2026-02","quantity":4},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":4},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000004, 0.333, '[{"period":"2026-02","quantity":1},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":1},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000005, 0.667, '[{"period":"2026-02","quantity":1},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":1},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000006, 1.333, '[{"period":"2026-02","quantity":2},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":2},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000007, 1.333, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":2},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":2},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000008, 2.000, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":3},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":3},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000009, 2.000, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":3},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":3},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000010, 2.667, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":4},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":4},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000011, 2.000, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":4},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":4}]'),
    (9000001, 9000012, 0.500, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":1},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":1}]'),
    (9000001, 9000013, 0.000, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":1},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000014, 0.000, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":2},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000015, 0.000, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":2},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000016, 0.000, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":3},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000017, 0.000, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":3},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000018, 0.000, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":4},{"period":"2026-05","quantity":0},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000019, 0.667, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":4},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]'),
    (9000001, 9000020, 0.167, '[{"period":"2026-02","quantity":0},{"period":"2026-03","quantity":0},{"period":"2026-04","quantity":0},{"period":"2026-05","quantity":1},{"period":"2026-06","quantity":0},{"period":"2026-07","quantity":0},{"period":"2026-08","quantity":0},{"period":"2026-09","quantity":0}]');
  INSERT INTO `payments` (`payment_id`, `purchase_order_id`, `payment_method_id`, `user_id`, `original_payment_id`, `payment_number`, `payment_type`, `payment_amount`, `transaction_reference`, `date_paid`, `transaction_request_key`) VALUES
    (9000001, 9000001, 2, 9000001, NULL, 'SUPPAY-0001', 'payment', 13284.32, 'BANK-0001', '2026-01-12 13:00:00', 'SUPPAY-REQ-0001'),
    (9000002, 9000002, 2, 9000001, NULL, 'SUPPAY-0002', 'payment', 13225.86, 'BANK-0002', '2026-01-13 13:00:00', 'SUPPAY-REQ-0002'),
    (9000003, 9000003, 2, 9000001, NULL, 'SUPPAY-0003', 'payment', 17661.00, 'BANK-0003', '2026-01-14 13:00:00', 'SUPPAY-REQ-0003'),
    (9000004, 9000004, 2, 9000001, NULL, 'SUPPAY-0004', 'payment', 17488.53, 'BANK-0004', '2026-01-15 13:00:00', 'SUPPAY-REQ-0004'),
    (9000005, 9000005, 2, 9000001, NULL, 'SUPPAY-0005', 'payment', 26276.32, 'BANK-0005', '2026-01-16 13:00:00', 'SUPPAY-REQ-0005'),
    (9000006, 9000006, 2, 9000001, NULL, 'SUPPAY-0006', 'payment', 7168.80, 'BANK-0006', '2026-01-17 13:00:00', 'SUPPAY-REQ-0006'),
    (9000007, 9000007, 2, 9000001, NULL, 'SUPPAY-0007', 'payment', 13284.32, 'BANK-0007', '2026-01-18 13:00:00', 'SUPPAY-REQ-0007'),
    (9000008, 9000008, 2, 9000001, NULL, 'SUPPAY-0008', 'payment', 13225.86, 'BANK-0008', '2026-01-19 13:00:00', 'SUPPAY-REQ-0008'),
    (9000009, 9000009, 2, 9000001, NULL, 'SUPPAY-0009', 'payment', 7947.45, 'BANK-0009', '2026-01-20 13:00:00', 'SUPPAY-REQ-0009'),
    (9000010, 9000010, 2, 9000001, NULL, 'SUPPAY-0010', 'payment', 11514.16, 'BANK-0010', '2026-01-21 13:00:00', 'SUPPAY-REQ-0010');
  INSERT INTO `purchase_order_acknowledgments` (`purchase_order_id`, `user_id`, `date_acknowledged`) VALUES
    (9000001, 9000010, '2026-01-07 09:00:00'),
    (9000002, 9000011, '2026-01-08 09:00:00'),
    (9000003, 9000012, '2026-01-09 09:00:00'),
    (9000004, 9000013, '2026-01-10 09:00:00'),
    (9000005, 9000014, '2026-01-11 09:00:00'),
    (9000006, 9000010, '2026-01-12 09:00:00'),
    (9000007, 9000011, '2026-01-13 09:00:00'),
    (9000008, 9000012, '2026-01-14 09:00:00'),
    (9000009, 9000013, '2026-01-15 09:00:00'),
    (9000010, 9000014, '2026-01-16 09:00:00');
  INSERT INTO `purchase_order_approvals` (`purchase_order_approval_id`, `purchase_order_id`, `user_id`, `approval_status_id`, `date_decided`, `comments`) VALUES
    (9000001, 9000001, 9000001, 1, '2026-01-06 09:00:00', 'Owner approved sample purchase'),
    (9000002, 9000002, 9000001, 1, '2026-01-07 09:00:00', 'Owner approved sample purchase'),
    (9000003, 9000003, 9000001, 1, '2026-01-08 09:00:00', 'Owner approved sample purchase'),
    (9000004, 9000004, 9000001, 1, '2026-01-09 09:00:00', 'Owner approved sample purchase'),
    (9000005, 9000005, 9000001, 1, '2026-01-10 09:00:00', 'Owner approved sample purchase'),
    (9000006, 9000006, 9000001, 1, '2026-01-11 09:00:00', 'Owner approved sample purchase'),
    (9000007, 9000007, 9000001, 1, '2026-01-12 09:00:00', 'Owner approved sample purchase'),
    (9000008, 9000008, 9000001, 1, '2026-01-13 09:00:00', 'Owner approved sample purchase'),
    (9000009, 9000009, 9000001, 1, '2026-01-14 09:00:00', 'Owner approved sample purchase'),
    (9000010, 9000010, 9000001, 1, '2026-01-15 09:00:00', 'Owner approved sample purchase'),
    (9000011, 9000011, 9000001, 1, '2026-01-16 09:00:00', 'Owner approved sample purchase'),
    (9000012, 9000013, 9000001, 2, '2026-01-18 09:00:00', 'Returned to draft for quantity review');
  INSERT INTO `purchase_order_items` (`purchase_order_item_id`, `purchase_order_id`, `product_variant_id`, `line_number`, `quantity_ordered`, `quantity_cancelled`, `unit_cost`, `discount_amount`, `tax_id`, `vat_amount`) VALUES
    (9000001, 9000001, 9000001, 1, 45, 0, 231.42, 0.00, 9000001, 1249.67),
    (9000002, 9000001, 9000002, 2, 45, 0, 243.02, 0.00, 9000001, 1312.31),
    (9000003, 9000002, 9000003, 1, 50, 0, 289.42, 0.00, 9000001, 1736.52),
    (9000004, 9000002, 9000004, 2, 50, 0, 301.02, 0.00, 9000001, 1806.12),
    (9000005, 9000003, 9000005, 1, 55, 0, 347.42, 0.00, 9000002, 0.00),
    (9000006, 9000003, 9000006, 2, 55, 0, 359.02, 0.00, 9000002, 0.00),
    (9000007, 9000004, 9000007, 1, 40, 0, 405.42, 0.00, 9000001, 1946.02),
    (9000008, 9000004, 9000008, 2, 40, 0, 417.02, 0.00, 9000001, 2001.70),
    (9000009, 9000005, 9000009, 1, 45, 0, 463.42, 0.00, 9000001, 2502.47),
    (9000010, 9000005, 9000010, 2, 45, 0, 475.02, 0.00, 9000001, 2565.11),
    (9000011, 9000006, 9000011, 1, 50, 0, 173.42, 0.00, 9000002, 0.00),
    (9000012, 9000006, 9000012, 2, 50, 0, 185.02, 0.00, 9000002, 0.00),
    (9000013, 9000007, 9000013, 1, 55, 0, 231.42, 0.00, 9000001, 1527.37),
    (9000014, 9000007, 9000014, 2, 55, 0, 243.02, 0.00, 9000001, 1603.93),
    (9000015, 9000008, 9000015, 1, 40, 0, 289.42, 0.00, 9000001, 1389.22),
    (9000016, 9000008, 9000016, 2, 40, 0, 301.02, 0.00, 9000001, 1444.90),
    (9000017, 9000009, 9000017, 1, 45, 0, 347.42, 0.00, 9000002, 0.00),
    (9000018, 9000009, 9000018, 2, 45, 0, 359.02, 0.00, 9000002, 0.00),
    (9000019, 9000010, 9000019, 1, 50, 0, 405.42, 0.00, 9000001, 2432.52),
    (9000020, 9000010, 9000020, 2, 50, 0, 417.02, 0.00, 9000001, 2502.12),
    (9000021, 9000011, 9000021, 1, 55, 0, 463.42, 0.00, 9000001, 3058.57),
    (9000022, 9000011, 9000022, 2, 55, 0, 475.02, 0.00, 9000001, 3135.13),
    (9000023, 9000012, 9000023, 1, 40, 0, 173.42, 0.00, 9000002, 0.00),
    (9000024, 9000012, 9000024, 2, 40, 0, 185.02, 0.00, 9000002, 0.00),
    (9000025, 9000013, 9000025, 1, 45, 0, 231.42, 0.00, 9000001, 1249.67),
    (9000026, 9000013, 9000026, 2, 45, 0, 243.02, 0.00, 9000001, 1312.31),
    (9000027, 9000014, 9000027, 1, 50, 50, 289.42, 0.00, 9000001, 0.00),
    (9000028, 9000014, 9000028, 2, 50, 50, 301.02, 0.00, 9000001, 0.00),
    (9000029, 9000015, 9000029, 1, 55, 0, 347.42, 0.00, 9000002, 0.00),
    (9000030, 9000015, 9000030, 2, 65, 0, 359.02, 0.00, 9000002, 0.00);
  INSERT INTO `sales` (`sale_id`, `sales_order_id`, `user_id`, `sale_status_id`, `sale_number`, `date_sold`, `void_reason`) VALUES
    (9000001, 9000001, 9000004, 1, 'SALE-0001', '2026-02-05 10:00:00', NULL),
    (9000002, 9000002, 9000005, 1, 'SALE-0002', '2026-02-12 10:00:00', NULL),
    (9000003, 9000003, 9000003, 1, 'SALE-0003', '2026-02-19 10:00:00', NULL),
    (9000004, 9000004, 9000004, 1, 'SALE-0004', '2026-03-05 10:00:00', NULL),
    (9000005, 9000005, 9000005, 1, 'SALE-0005', '2026-03-12 10:00:00', NULL),
    (9000006, 9000006, 9000003, 1, 'SALE-0006', '2026-03-19 10:00:00', NULL),
    (9000007, 9000007, 9000004, 1, 'SALE-0007', '2026-04-05 10:00:00', NULL),
    (9000008, 9000008, 9000005, 1, 'SALE-0008', '2026-04-12 10:00:00', NULL),
    (9000009, 9000009, 9000003, 1, 'SALE-0009', '2026-04-19 10:00:00', NULL),
    (9000010, 9000010, 9000004, 1, 'SALE-0010', '2026-05-05 10:00:00', NULL),
    (9000011, 9000011, 9000005, 1, 'SALE-0011', '2026-05-12 10:00:00', NULL),
    (9000012, 9000012, 9000003, 1, 'SALE-0012', '2026-05-19 10:00:00', NULL),
    (9000013, 9000013, 9000004, 1, 'SALE-0013', '2026-06-05 10:00:00', NULL),
    (9000014, 9000014, 9000005, 1, 'SALE-0014', '2026-06-12 10:00:00', NULL),
    (9000015, 9000015, 9000003, 1, 'SALE-0015', '2026-06-19 10:00:00', NULL),
    (9000016, 9000016, 9000004, 1, 'SALE-0016', '2026-07-05 10:00:00', NULL),
    (9000017, 9000017, 9000005, 1, 'SALE-0017', '2026-07-12 10:00:00', NULL),
    (9000018, 9000018, 9000003, 1, 'SALE-0018', '2026-07-19 10:00:00', NULL),
    (9000019, 9000019, 9000004, 1, 'SALE-0019', '2026-08-05 10:00:00', NULL),
    (9000020, 9000020, 9000005, 1, 'SALE-0020', '2026-08-12 10:00:00', NULL),
    (9000021, 9000021, 9000003, 1, 'SALE-0021', '2026-08-19 10:00:00', NULL),
    (9000022, 9000022, 9000004, 1, 'SALE-0022', '2026-09-05 10:00:00', NULL);
  INSERT INTO `sales_order_discounts` (`sales_order_discount_id`, `sales_order_id`, `discount_id`, `user_id`, `discount_amount`, `eligibility_notes`, `date_applied`) VALUES
    (9000001, 9000001, 9000003, 9000004, 143.65, NULL, '2026-02-05 09:10:00'),
    (9000002, 9000002, 9000002, 9000004, 251.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-02-12 09:10:00'),
    (9000003, 9000003, 9000003, 9000004, 91.85, NULL, '2026-02-19 09:10:00'),
    (9000004, 9000004, 9000002, 9000004, 355.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-03-05 09:10:00'),
    (9000005, 9000005, 9000003, 9000004, 283.65, NULL, '2026-03-12 09:10:00'),
    (9000006, 9000006, 9000002, 9000004, 151.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-03-19 09:10:00'),
    (9000007, 9000007, 9000003, 9000004, 61.85, NULL, '2026-04-05 09:10:00'),
    (9000008, 9000008, 9000002, 9000004, 255.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-04-12 09:10:00'),
    (9000009, 9000009, 9000003, 9000004, 213.65, NULL, '2026-04-19 09:10:00'),
    (9000010, 9000010, 9000002, 9000004, 351.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-05-05 09:10:00'),
    (9000011, 9000011, 9000003, 9000004, 121.85, NULL, '2026-05-12 09:10:00'),
    (9000012, 9000012, 9000002, 9000004, 155.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-05-19 09:10:00');
  INSERT INTO `sales_order_items` (`sales_order_item_id`, `sales_order_id`, `product_variant_id`, `line_number`, `quantity_ordered`, `quantity_cancelled`, `unit_price`, `tax_id`, `vat_amount`) VALUES
    (9000001, 9000001, 9000001, 1, 3, 0, 399.00, 9000001, 136.46),
    (9000002, 9000001, 9000002, 2, 4, 0, 419.00, 9000001, 191.06),
    (9000003, 9000002, 9000003, 1, 4, 0, 499.00, 9000001, 215.57),
    (9000004, 9000002, 9000004, 2, 1, 0, 519.00, 9000001, 56.05),
    (9000005, 9000003, 9000005, 1, 1, 0, 599.00, 9000001, 68.29),
    (9000006, 9000003, 9000006, 2, 2, 0, 619.00, 9000001, 141.13),
    (9000007, 9000004, 9000007, 1, 2, 0, 699.00, 9000001, 150.98),
    (9000008, 9000004, 9000008, 2, 3, 0, 719.00, 9000001, 232.96),
    (9000009, 9000005, 9000009, 1, 3, 0, 799.00, 9000002, 0.00),
    (9000010, 9000005, 9000010, 2, 4, 0, 819.00, 9000002, 0.00),
    (9000011, 9000006, 9000011, 1, 4, 0, 299.00, 9000001, 129.17),
    (9000012, 9000006, 9000012, 2, 1, 0, 319.00, 9000001, 34.45),
    (9000013, 9000007, 9000013, 1, 1, 0, 399.00, 9000001, 45.49),
    (9000014, 9000007, 9000014, 2, 2, 0, 419.00, 9000001, 95.53),
    (9000015, 9000008, 9000015, 1, 2, 0, 499.00, 9000001, 107.78),
    (9000016, 9000008, 9000016, 2, 3, 0, 519.00, 9000001, 168.16),
    (9000017, 9000009, 9000017, 1, 3, 0, 599.00, 9000001, 204.86),
    (9000018, 9000009, 9000018, 2, 4, 0, 619.00, 9000001, 282.26),
    (9000019, 9000010, 9000019, 1, 4, 0, 699.00, 9000002, 0.00),
    (9000020, 9000010, 9000020, 2, 1, 0, 719.00, 9000002, 0.00),
    (9000021, 9000011, 9000021, 1, 1, 0, 799.00, 9000001, 91.09),
    (9000022, 9000011, 9000022, 2, 2, 0, 819.00, 9000001, 186.73),
    (9000023, 9000012, 9000023, 1, 2, 0, 299.00, 9000001, 64.58),
    (9000024, 9000012, 9000024, 2, 3, 0, 319.00, 9000001, 103.36),
    (9000025, 9000013, 9000025, 1, 3, 0, 399.00, 9000001, 143.64),
    (9000026, 9000013, 9000026, 2, 4, 0, 419.00, 9000001, 201.12),
    (9000027, 9000014, 9000027, 1, 4, 0, 499.00, 9000001, 239.52),
    (9000028, 9000014, 9000028, 2, 1, 0, 519.00, 9000001, 62.28),
    (9000029, 9000015, 9000029, 1, 1, 0, 599.00, 9000002, 0.00),
    (9000030, 9000015, 9000030, 2, 2, 0, 619.00, 9000002, 0.00),
    (9000031, 9000016, 9000031, 1, 2, 0, 699.00, 9000001, 167.76),
    (9000032, 9000016, 9000032, 2, 3, 0, 719.00, 9000001, 258.84),
    (9000033, 9000017, 9000001, 1, 3, 0, 399.00, 9000001, 143.64),
    (9000034, 9000017, 9000002, 2, 4, 0, 419.00, 9000001, 201.12),
    (9000035, 9000018, 9000003, 1, 4, 0, 499.00, 9000001, 239.52),
    (9000036, 9000018, 9000004, 2, 1, 0, 519.00, 9000001, 62.28),
    (9000037, 9000019, 9000005, 1, 1, 0, 599.00, 9000001, 71.88),
    (9000038, 9000019, 9000006, 2, 2, 0, 619.00, 9000001, 148.56),
    (9000039, 9000020, 9000007, 1, 2, 0, 699.00, 9000002, 0.00),
    (9000040, 9000020, 9000008, 2, 3, 0, 719.00, 9000002, 0.00),
    (9000041, 9000021, 9000009, 1, 3, 0, 799.00, 9000001, 287.64),
    (9000042, 9000021, 9000010, 2, 4, 0, 819.00, 9000001, 393.12),
    (9000043, 9000022, 9000011, 1, 4, 0, 299.00, 9000001, 143.52),
    (9000044, 9000022, 9000012, 2, 1, 0, 319.00, 9000001, 38.28),
    (9000045, 9000023, 9000013, 1, 1, 0, 399.00, 9000001, 47.88),
    (9000046, 9000023, 9000014, 2, 2, 0, 419.00, 9000001, 100.56),
    (9000047, 9000024, 9000015, 1, 2, 2, 499.00, 9000001, 0.00),
    (9000048, 9000024, 9000016, 2, 3, 3, 519.00, 9000001, 0.00);
  INSERT INTO `stock_adjustments` (`stock_adjustment_id`, `product_variant_id`, `user_id`, `adjustment_type`, `quantity_change`, `adjustment_reason`, `date_created`) VALUES
    (9000001, 9000001, 9000003, 'opening', 120, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000002, 9000002, 9000003, 'opening', 140, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000003, 9000003, 9000003, 'opening', 160, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000004, 9000004, 9000003, 'opening', 180, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000005, 9000005, 9000003, 'opening', 100, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000006, 9000006, 9000003, 'opening', 120, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000007, 9000007, 9000003, 'opening', 140, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000008, 9000008, 9000003, 'opening', 160, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000009, 9000009, 9000003, 'opening', 180, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000010, 9000010, 9000003, 'opening', 100, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000011, 9000011, 9000003, 'opening', 120, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000012, 9000012, 9000003, 'opening', 140, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000013, 9000013, 9000003, 'opening', 160, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000014, 9000014, 9000003, 'opening', 180, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000015, 9000015, 9000003, 'opening', 100, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000016, 9000016, 9000003, 'opening', 120, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000017, 9000017, 9000003, 'opening', 140, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000018, 9000018, 9000003, 'opening', 160, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000019, 9000019, 9000003, 'opening', 180, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000020, 9000020, 9000003, 'opening', 100, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000021, 9000021, 9000003, 'opening', 120, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000022, 9000022, 9000003, 'opening', 140, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000023, 9000023, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000024, 9000024, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000025, 9000025, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000026, 9000026, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000027, 9000027, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000028, 9000028, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000029, 9000029, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000030, 9000030, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000031, 9000031, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
    (9000032, 9000032, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03');
  INSERT INTO `supplier_invoices` (`supplier_invoice_id`, `purchase_order_id`, `supplier_id`, `user_id`, `invoice_number`, `date_invoiced`, `date_due`, `document_path`, `invoice_status_id`) VALUES
    (9000001, 9000001, 9000001, 9000003, 'INV-0001', '2026-01-11', '2026-02-10', NULL, 2),
    (9000002, 9000002, 9000002, 9000003, 'INV-0002', '2026-01-12', '2026-02-11', NULL, 2),
    (9000003, 9000003, 9000003, 9000003, 'INV-0003', '2026-01-13', '2026-02-12', NULL, 2),
    (9000004, 9000004, 9000004, 9000003, 'INV-0004', '2026-01-14', '2026-02-13', NULL, 2),
    (9000005, 9000005, 9000005, 9000003, 'INV-0005', '2026-01-15', '2026-02-14', NULL, 2),
    (9000006, 9000006, 9000001, 9000003, 'INV-0006', '2026-01-16', '2026-02-15', NULL, 2),
    (9000007, 9000007, 9000002, 9000003, 'INV-0007', '2026-01-17', '2026-02-16', NULL, 2),
    (9000008, 9000008, 9000003, 9000003, 'INV-0008', '2026-01-18', '2026-02-17', NULL, 2);
  INSERT INTO `supplier_items` (`supplier_item_id`, `supplier_id`, `product_variant_id`, `supplier_stock_keeping_unit`, `quoted_unit_cost`, `lead_time_days`, `minimum_order_quantity`, `order_quantity_multiple`, `date_quoted`) VALUES
    (9000001, 9000001, 9000001, 'VENDOR-SKU-0001', 231.42, 4, 10, 5, '2026-01-02 09:00:00'),
    (9000002, 9000001, 9000002, 'VENDOR-SKU-0002', 243.02, 5, 10, 5, '2026-01-02 09:00:00'),
    (9000003, 9000002, 9000003, 'VENDOR-SKU-0003', 289.42, 6, 10, 5, '2026-01-02 09:00:00'),
    (9000004, 9000002, 9000004, 'VENDOR-SKU-0004', 301.02, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000005, 9000003, 9000005, 'VENDOR-SKU-0005', 347.42, 3, 10, 5, '2026-01-02 09:00:00'),
    (9000006, 9000003, 9000006, 'VENDOR-SKU-0006', 359.02, 4, 10, 5, '2026-01-02 09:00:00'),
    (9000007, 9000004, 9000007, 'VENDOR-SKU-0007', 405.42, 5, 10, 5, '2026-01-02 09:00:00'),
    (9000008, 9000004, 9000008, 'VENDOR-SKU-0008', 417.02, 6, 10, 5, '2026-01-02 09:00:00'),
    (9000009, 9000005, 9000009, 'VENDOR-SKU-0009', 463.42, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000010, 9000005, 9000010, 'VENDOR-SKU-0010', 475.02, 3, 10, 5, '2026-01-02 09:00:00'),
    (9000011, 9000001, 9000011, 'VENDOR-SKU-0011', 173.42, 4, 10, 5, '2026-01-02 09:00:00'),
    (9000012, 9000001, 9000012, 'VENDOR-SKU-0012', 185.02, 5, 10, 5, '2026-01-02 09:00:00'),
    (9000013, 9000002, 9000013, 'VENDOR-SKU-0013', 231.42, 6, 10, 5, '2026-01-02 09:00:00'),
    (9000014, 9000002, 9000014, 'VENDOR-SKU-0014', 243.02, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000015, 9000003, 9000015, 'VENDOR-SKU-0015', 289.42, 3, 10, 5, '2026-01-02 09:00:00'),
    (9000016, 9000003, 9000016, 'VENDOR-SKU-0016', 301.02, 4, 10, 5, '2026-01-02 09:00:00'),
    (9000017, 9000004, 9000017, 'VENDOR-SKU-0017', 347.42, 5, 10, 5, '2026-01-02 09:00:00'),
    (9000018, 9000004, 9000018, 'VENDOR-SKU-0018', 359.02, 6, 10, 5, '2026-01-02 09:00:00'),
    (9000019, 9000005, 9000019, 'VENDOR-SKU-0019', 405.42, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000020, 9000005, 9000020, 'VENDOR-SKU-0020', 417.02, 3, 10, 5, '2026-01-02 09:00:00'),
    (9000021, 9000001, 9000021, 'VENDOR-SKU-0021', 463.42, 4, 10, 5, '2026-01-02 09:00:00'),
    (9000022, 9000001, 9000022, 'VENDOR-SKU-0022', 475.02, 5, 10, 5, '2026-01-02 09:00:00'),
    (9000023, 9000002, 9000023, 'VENDOR-SKU-0023', 173.42, 6, 10, 5, '2026-01-02 09:00:00'),
    (9000024, 9000002, 9000024, 'VENDOR-SKU-0024', 185.02, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000025, 9000003, 9000025, 'VENDOR-SKU-0025', 231.42, 3, 10, 5, '2026-01-02 09:00:00'),
    (9000026, 9000003, 9000026, 'VENDOR-SKU-0026', 243.02, 4, 10, 5, '2026-01-02 09:00:00'),
    (9000027, 9000004, 9000027, 'VENDOR-SKU-0027', 289.42, 5, 10, 5, '2026-01-02 09:00:00'),
    (9000028, 9000004, 9000028, 'VENDOR-SKU-0028', 301.02, 6, 10, 5, '2026-01-02 09:00:00'),
    (9000029, 9000005, 9000029, 'VENDOR-SKU-0029', 347.42, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000030, 9000005, 9000030, 'VENDOR-SKU-0030', 359.02, 3, 10, 5, '2026-01-02 09:00:00'),
    (9000031, 9000001, 9000031, 'VENDOR-SKU-0031', 405.42, 4, 10, 5, '2026-01-02 09:00:00'),
    (9000032, 9000001, 9000032, 'VENDOR-SKU-0032', 417.02, 5, 10, 5, '2026-01-02 09:00:00'),
    (9000033, 9000002, 9000001, 'ALT-SKU-0001', 241.42, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000034, 9000002, 9000002, 'ALT-SKU-0002', 253.02, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000035, 9000003, 9000003, 'ALT-SKU-0003', 299.42, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000036, 9000003, 9000004, 'ALT-SKU-0004', 311.02, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000037, 9000004, 9000005, 'ALT-SKU-0005', 357.42, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000038, 9000004, 9000006, 'ALT-SKU-0006', 369.02, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000039, 9000005, 9000007, 'ALT-SKU-0007', 415.42, 7, 10, 5, '2026-01-02 09:00:00'),
    (9000040, 9000005, 9000008, 'ALT-SKU-0008', 427.02, 7, 10, 5, '2026-01-02 09:00:00');
  INSERT INTO `delivery_items` (`delivery_item_id`, `delivery_id`, `purchase_order_id`, `purchase_order_item_id`, `sales_order_id`, `sales_order_item_id`, `quantity_shipped`) VALUES
    (9000001, 9000001, 9000001, 9000001, NULL, NULL, 25),
    (9000002, 9000001, 9000001, 9000002, NULL, NULL, 25),
    (9000003, 9000002, 9000002, 9000003, NULL, NULL, 20),
    (9000004, 9000002, 9000002, 9000004, NULL, NULL, 20),
    (9000005, 9000003, 9000003, 9000005, NULL, NULL, 25),
    (9000006, 9000003, 9000003, 9000006, NULL, NULL, 25),
    (9000007, 9000004, 9000004, 9000007, NULL, NULL, 20),
    (9000008, 9000004, 9000004, 9000008, NULL, NULL, 20),
    (9000009, 9000005, 9000005, 9000009, NULL, NULL, 25),
    (9000010, 9000005, 9000005, 9000010, NULL, NULL, 25),
    (9000011, 9000006, 9000006, 9000011, NULL, NULL, 20),
    (9000012, 9000006, 9000006, 9000012, NULL, NULL, 20),
    (9000013, 9000007, 9000007, 9000013, NULL, NULL, 25),
    (9000014, 9000007, 9000007, 9000014, NULL, NULL, 25),
    (9000015, 9000008, 9000008, 9000015, NULL, NULL, 20),
    (9000016, 9000008, 9000008, 9000016, NULL, NULL, 20),
    (9000017, 9000009, 9000009, 9000017, NULL, NULL, 25),
    (9000018, 9000009, 9000009, 9000018, NULL, NULL, 25),
    (9000019, 9000010, 9000010, 9000019, NULL, NULL, 20),
    (9000020, 9000010, 9000010, 9000020, NULL, NULL, 20),
    (9000021, 9000011, NULL, NULL, 9000001, 9000001, 3),
    (9000022, 9000011, NULL, NULL, 9000001, 9000002, 4),
    (9000023, 9000012, NULL, NULL, 9000002, 9000003, 4),
    (9000024, 9000012, NULL, NULL, 9000002, 9000004, 1),
    (9000025, 9000013, NULL, NULL, 9000003, 9000005, 1),
    (9000026, 9000013, NULL, NULL, 9000003, 9000006, 2),
    (9000027, 9000014, NULL, NULL, 9000004, 9000007, 2),
    (9000028, 9000014, NULL, NULL, 9000004, 9000008, 3),
    (9000029, 9000015, NULL, NULL, 9000005, 9000009, 3),
    (9000030, 9000015, NULL, NULL, 9000005, 9000010, 4),
    (9000031, 9000016, NULL, NULL, 9000006, 9000011, 4),
    (9000032, 9000016, NULL, NULL, 9000006, 9000012, 1),
    (9000033, 9000017, NULL, NULL, 9000007, 9000013, 1),
    (9000034, 9000017, NULL, NULL, 9000007, 9000014, 2),
    (9000035, 9000018, NULL, NULL, 9000008, 9000015, 2),
    (9000036, 9000018, NULL, NULL, 9000008, 9000016, 3),
    (9000037, 9000019, NULL, NULL, 9000009, 9000017, 3),
    (9000038, 9000019, NULL, NULL, 9000009, 9000018, 4),
    (9000039, 9000020, NULL, NULL, 9000010, 9000019, 4),
    (9000040, 9000020, NULL, NULL, 9000010, 9000020, 1),
    (9000041, 9000021, NULL, NULL, 9000011, 9000021, 1),
    (9000042, 9000021, NULL, NULL, 9000011, 9000022, 2),
    (9000043, 9000022, NULL, NULL, 9000012, 9000023, 2),
    (9000044, 9000022, NULL, NULL, 9000012, 9000024, 3),
    (9000045, 9000023, NULL, NULL, 9000013, 9000025, 3),
    (9000046, 9000023, NULL, NULL, 9000013, 9000026, 4),
    (9000047, 9000024, NULL, NULL, 9000014, 9000027, 4),
    (9000048, 9000024, NULL, NULL, 9000014, 9000028, 1),
    (9000049, 9000025, NULL, NULL, 9000015, 9000029, 1),
    (9000050, 9000025, NULL, NULL, 9000015, 9000030, 2),
    (9000051, 9000026, NULL, NULL, 9000016, 9000031, 2),
    (9000052, 9000026, NULL, NULL, 9000016, 9000032, 3),
    (9000053, 9000027, NULL, NULL, 9000017, 9000033, 3),
    (9000054, 9000027, NULL, NULL, 9000017, 9000034, 4),
    (9000055, 9000028, NULL, NULL, 9000018, 9000035, 4),
    (9000056, 9000028, NULL, NULL, 9000018, 9000036, 1);
  INSERT INTO `delivery_tracking` (`delivery_tracking_id`, `delivery_id`, `carrier_id`, `tracking_number`, `date_created`) VALUES
    (9000001, 9000001, 9000002, 'TRACK-0001', '2026-01-08'),
    (9000002, 9000002, 9000003, 'TRACK-0002', '2026-01-09'),
    (9000003, 9000003, 9000001, 'TRACK-0003', '2026-01-10'),
    (9000004, 9000004, 9000002, 'TRACK-0004', '2026-01-11'),
    (9000005, 9000005, 9000003, 'TRACK-0005', '2026-01-12'),
    (9000006, 9000006, 9000001, 'TRACK-0006', '2026-01-13'),
    (9000007, 9000007, 9000002, 'TRACK-0007', '2026-01-14'),
    (9000008, 9000008, 9000003, 'TRACK-0008', '2026-01-15'),
    (9000009, 9000009, 9000001, 'TRACK-0009', '2026-01-16'),
    (9000010, 9000010, 9000002, 'TRACK-0010', '2026-01-17'),
    (9000011, 9000011, 9000003, 'TRACK-0011', '2026-02-06'),
    (9000012, 9000012, 9000001, 'TRACK-0012', '2026-02-13'),
    (9000013, 9000013, 9000002, 'TRACK-0013', '2026-02-20'),
    (9000014, 9000014, 9000003, 'TRACK-0014', '2026-03-06'),
    (9000015, 9000015, 9000001, 'TRACK-0015', '2026-03-13'),
    (9000016, 9000016, 9000002, 'TRACK-0016', '2026-03-20'),
    (9000017, 9000017, 9000003, 'TRACK-0017', '2026-04-06'),
    (9000018, 9000018, 9000001, 'TRACK-0018', '2026-04-13'),
    (9000019, 9000019, 9000002, 'TRACK-0019', '2026-04-20'),
    (9000020, 9000020, 9000003, 'TRACK-0020', '2026-05-06'),
    (9000021, 9000021, 9000001, 'TRACK-0021', '2026-05-13'),
    (9000022, 9000022, 9000002, 'TRACK-0022', '2026-05-20'),
    (9000023, 9000023, 9000003, 'TRACK-0023', '2026-06-06'),
    (9000024, 9000024, 9000001, 'TRACK-0024', '2026-06-13'),
    (9000025, 9000025, 9000002, 'TRACK-0025', '2026-06-20'),
    (9000026, 9000026, 9000003, 'TRACK-0026', '2026-07-06'),
    (9000027, 9000027, 9000001, 'TRACK-0027', '2026-07-13'),
    (9000028, 9000028, 9000002, 'TRACK-0028', '2026-07-20');
  INSERT INTO `demand_forecasts` (`demand_forecast_id`, `forecast_run_id`, `product_variant_id`, `date_period_start`, `date_period_end`, `predicted_quantity`, `lower_prediction_bound`, `upper_prediction_bound`) VALUES
    (9000001, 9000001, 9000001, '2026-10-01', '2026-10-31', 1, NULL, NULL),
    (9000002, 9000001, 9000002, '2026-10-01', '2026-10-31', 2, NULL, NULL),
    (9000003, 9000001, 9000003, '2026-10-01', '2026-10-31', 2, NULL, NULL),
    (9000004, 9000001, 9000004, '2026-10-01', '2026-10-31', 1, NULL, NULL),
    (9000005, 9000001, 9000005, '2026-10-01', '2026-10-31', 1, NULL, NULL),
    (9000006, 9000001, 9000006, '2026-10-01', '2026-10-31', 1, NULL, NULL),
    (9000007, 9000001, 9000007, '2026-10-01', '2026-10-31', 1, NULL, NULL),
    (9000008, 9000001, 9000008, '2026-10-01', '2026-10-31', 1, NULL, NULL),
    (9000009, 9000001, 9000009, '2026-10-01', '2026-10-31', 1, NULL, NULL),
    (9000010, 9000001, 9000010, '2026-10-01', '2026-10-31', 2, NULL, NULL),
    (9000011, 9000001, 9000011, '2026-10-01', '2026-10-31', 2, NULL, NULL),
    (9000012, 9000001, 9000012, '2026-10-01', '2026-10-31', 1, NULL, NULL),
    (9000013, 9000001, 9000013, '2026-10-01', '2026-10-31', 0, NULL, NULL),
    (9000014, 9000001, 9000014, '2026-10-01', '2026-10-31', 0, NULL, NULL),
    (9000015, 9000001, 9000015, '2026-10-01', '2026-10-31', 0, NULL, NULL),
    (9000016, 9000001, 9000016, '2026-10-01', '2026-10-31', 0, NULL, NULL),
    (9000017, 9000001, 9000017, '2026-10-01', '2026-10-31', 0, NULL, NULL),
    (9000018, 9000001, 9000018, '2026-10-01', '2026-10-31', 0, NULL, NULL),
    (9000019, 9000001, 9000019, '2026-10-01', '2026-10-31', 0, NULL, NULL),
    (9000020, 9000001, 9000020, '2026-10-01', '2026-10-31', 0, NULL, NULL);
  INSERT INTO `goods_receipts` (`goods_receipt_id`, `delivery_id`, `purchase_order_id`, `user_id`, `receipt_number`, `date_received`, `receipt_status_id`, `notes`) VALUES
    (9000001, 9000001, 9000001, 9000007, 'GR-0001', '2026-01-10 15:15:00', 2, 'Synthetic inspection and receiving example'),
    (9000002, 9000002, 9000002, 9000008, 'GR-0002', '2026-01-11 15:15:00', 2, 'Synthetic inspection and receiving example'),
    (9000003, 9000003, 9000003, 9000009, 'GR-0003', '2026-01-12 15:15:00', 2, 'Synthetic inspection and receiving example'),
    (9000004, 9000004, 9000004, 9000006, 'GR-0004', '2026-01-13 15:15:00', 2, 'Synthetic inspection and receiving example'),
    (9000005, 9000005, 9000005, 9000007, 'GR-0005', '2026-01-14 15:15:00', 2, 'Synthetic inspection and receiving example'),
    (9000006, 9000006, 9000006, 9000008, 'GR-0006', '2026-01-15 15:15:00', 2, 'Synthetic inspection and receiving example'),
    (9000007, 9000007, 9000007, 9000009, 'GR-0007', '2026-01-16 15:15:00', 2, 'Synthetic inspection and receiving example'),
    (9000008, 9000008, 9000008, 9000006, 'GR-0008', '2026-01-17 15:15:00', 2, 'Synthetic inspection and receiving example');
  INSERT INTO `replenishment_policies` (`replenishment_policy_id`, `product_variant_id`, `supplier_id`, `status_id`, `safety_stock_quantity`, `reorder_point_quantity`, `target_stock_quantity`, `review_interval_days`, `minimum_history_days`) VALUES
    (9000001, 9000001, 9000001, 1, 10, 25, 80, 7, 180),
    (9000002, 9000002, 9000001, 1, 10, 25, 80, 7, 180),
    (9000003, 9000003, 9000002, 1, 10, 25, 80, 7, 180),
    (9000004, 9000004, 9000002, 1, 10, 25, 80, 7, 180),
    (9000005, 9000005, 9000003, 1, 10, 25, 80, 7, 180),
    (9000006, 9000006, 9000003, 1, 10, 25, 80, 7, 180),
    (9000007, 9000007, 9000004, 1, 10, 25, 80, 7, 180),
    (9000008, 9000008, 9000004, 1, 10, 25, 80, 7, 180),
    (9000009, 9000009, 9000005, 1, 10, 25, 80, 7, 180),
    (9000010, 9000010, 9000005, 1, 10, 25, 80, 7, 180),
    (9000011, 9000011, 9000001, 1, 10, 25, 80, 7, 180),
    (9000012, 9000012, 9000001, 1, 10, 25, 80, 7, 180),
    (9000013, 9000013, 9000002, 1, 10, 25, 80, 7, 180),
    (9000014, 9000014, 9000002, 1, 10, 25, 80, 7, 180),
    (9000015, 9000015, 9000003, 1, 10, 25, 80, 7, 180),
    (9000016, 9000016, 9000003, 1, 10, 25, 80, 7, 180),
    (9000017, 9000017, 9000004, 1, 10, 25, 80, 7, 180),
    (9000018, 9000018, 9000004, 1, 10, 25, 80, 7, 180),
    (9000019, 9000019, 9000005, 1, 10, 25, 80, 7, 180),
    (9000020, 9000020, 9000005, 1, 10, 25, 80, 7, 180),
    (9000021, 9000021, 9000001, 1, 10, 25, 80, 7, 180),
    (9000022, 9000022, 9000001, 1, 10, 25, 80, 7, 180),
    (9000023, 9000023, 9000002, 1, 10, 25, 80, 7, 180),
    (9000024, 9000024, 9000002, 1, 10, 25, 80, 7, 180),
    (9000025, 9000025, 9000003, 1, 10, 25, 80, 7, 180),
    (9000026, 9000026, 9000003, 1, 10, 25, 80, 7, 180),
    (9000027, 9000027, 9000004, 1, 10, 25, 80, 7, 180),
    (9000028, 9000028, 9000004, 1, 10, 25, 80, 7, 180),
    (9000029, 9000029, 9000005, 1, 10, 25, 80, 7, 180),
    (9000030, 9000030, 9000005, 1, 10, 25, 80, 7, 180),
    (9000031, 9000031, 9000001, 1, 10, 25, 80, 7, 180),
    (9000032, 9000032, 9000001, 1, 10, 25, 80, 7, 180);
  INSERT INTO `sales_payments` (`sales_payment_id`, `sale_id`, `payment_method_id`, `user_id`, `original_payment_id`, `payment_number`, `payment_type`, `payment_amount`, `transaction_reference`, `date_paid`, `transaction_request_key`) VALUES
    (9000001, 9000001, 4, 9000004, NULL, 'CUSPAY-0001', 'payment', 1222.75, 'EWALLET-0001', '2026-02-05 11:00:00', 'CUSPAY-REQ-0001'),
    (9000002, 9000001, 4, 9000004, NULL, 'CUSPAY-0002', 'payment', 1834.12, 'EWALLET-0002', '2026-02-05 12:00:00', 'CUSPAY-REQ-0002'),
    (9000003, 9000002, 4, 9000004, NULL, 'CUSPAY-0003', 'payment', 1014.05, 'EWALLET-0003', '2026-02-12 11:00:00', 'CUSPAY-REQ-0003'),
    (9000004, 9000002, 4, 9000004, NULL, 'CUSPAY-0004', 'payment', 1521.07, 'EWALLET-0004', '2026-02-12 12:00:00', 'CUSPAY-REQ-0004'),
    (9000005, 9000003, 1, 9000004, NULL, 'CUSPAY-0005', 'payment', 781.83, NULL, '2026-02-19 11:00:00', 'CUSPAY-REQ-0005'),
    (9000006, 9000003, 1, 9000004, NULL, 'CUSPAY-0006', 'payment', 1172.74, NULL, '2026-02-19 12:00:00', 'CUSPAY-REQ-0006'),
    (9000007, 9000004, 4, 9000004, NULL, 'CUSPAY-0007', 'payment', 716.69, 'EWALLET-0007', '2026-03-05 11:00:00', 'CUSPAY-REQ-0007'),
    (9000008, 9000004, 4, 9000004, NULL, 'CUSPAY-0008', 'payment', 1075.03, 'EWALLET-0008', '2026-03-05 12:00:00', 'CUSPAY-REQ-0008'),
    (9000009, 9000005, 4, 9000004, NULL, 'CUSPAY-0009', 'payment', 2155.74, 'EWALLET-0009', '2026-03-12 11:00:00', 'CUSPAY-REQ-0009'),
    (9000010, 9000005, 4, 9000004, NULL, 'CUSPAY-0010', 'payment', 3233.61, 'EWALLET-0010', '2026-03-12 12:00:00', 'CUSPAY-REQ-0010'),
    (9000011, 9000006, 1, 9000004, NULL, 'CUSPAY-0011', 'payment', 610.85, NULL, '2026-03-19 11:00:00', 'CUSPAY-REQ-0011'),
    (9000012, 9000006, 1, 9000004, NULL, 'CUSPAY-0012', 'payment', 916.27, NULL, '2026-03-19 12:00:00', 'CUSPAY-REQ-0012'),
    (9000013, 9000007, 4, 9000004, NULL, 'CUSPAY-0013', 'payment', 526.47, 'EWALLET-0013', '2026-04-05 11:00:00', 'CUSPAY-REQ-0013'),
    (9000014, 9000007, 4, 9000004, NULL, 'CUSPAY-0014', 'payment', 789.70, 'EWALLET-0014', '2026-04-05 12:00:00', 'CUSPAY-REQ-0014'),
    (9000015, 9000008, 4, 9000004, NULL, 'CUSPAY-0015', 'payment', 1287.72, 'EWALLET-0015', '2026-04-12 11:00:00', 'CUSPAY-REQ-0015'),
    (9000016, 9000009, 1, 9000004, NULL, 'CUSPAY-0016', 'payment', 4546.47, NULL, '2026-04-19 11:00:00', 'CUSPAY-REQ-0016'),
    (9000017, 9000010, 4, 9000004, NULL, 'CUSPAY-0017', 'payment', 3163.50, 'EWALLET-0017', '2026-05-05 11:00:00', 'CUSPAY-REQ-0017'),
    (9000018, 9000011, 4, 9000004, NULL, 'CUSPAY-0018', 'payment', 2592.97, 'EWALLET-0018', '2026-05-12 11:00:00', 'CUSPAY-REQ-0018'),
    (9000019, 9000012, 1, 9000004, NULL, 'CUSPAY-0019', 'payment', 783.72, NULL, '2026-05-19 11:00:00', 'CUSPAY-REQ-0019'),
    (9000020, 9000013, 4, 9000004, NULL, 'CUSPAY-0020', 'payment', 3217.76, 'EWALLET-0020', '2026-06-05 11:00:00', 'CUSPAY-REQ-0020'),
    (9000021, 9000014, 4, 9000004, NULL, 'CUSPAY-0021', 'payment', 2816.80, 'EWALLET-0021', '2026-06-12 11:00:00', 'CUSPAY-REQ-0021'),
    (9000022, 9000015, 1, 9000004, NULL, 'CUSPAY-0022', 'payment', 1837.00, NULL, '2026-06-19 11:00:00', 'CUSPAY-REQ-0022'),
    (9000023, 9000016, 4, 9000004, NULL, 'CUSPAY-0023', 'payment', 1990.80, 'EWALLET-0023', '2026-07-05 11:00:00', 'CUSPAY-REQ-0023'),
    (9000024, 9000017, 4, 9000004, NULL, 'CUSPAY-0024', 'payment', 3217.76, 'EWALLET-0024', '2026-07-12 11:00:00', 'CUSPAY-REQ-0024'),
    (9000025, 9000018, 1, 9000004, NULL, 'CUSPAY-0025', 'payment', 2816.80, NULL, '2026-07-19 11:00:00', 'CUSPAY-REQ-0025');
  INSERT INTO `stock_adjustment_approvals` (`stock_adjustment_approval_id`, `stock_adjustment_id`, `user_id`, `approval_status_id`, `date_decided`, `comments`) VALUES
    (9000001, 9000001, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000002, 9000002, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000003, 9000003, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000004, 9000004, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000005, 9000005, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000006, 9000006, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000007, 9000007, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000008, 9000008, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000009, 9000009, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000010, 9000010, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000011, 9000011, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000012, 9000012, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000013, 9000013, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000014, 9000014, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000015, 9000015, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000016, 9000016, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000017, 9000017, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000018, 9000018, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000019, 9000019, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000020, 9000020, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000021, 9000021, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000022, 9000022, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000023, 9000023, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000024, 9000024, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000025, 9000025, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000026, 9000026, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000027, 9000027, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000028, 9000028, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000029, 9000029, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000030, 9000030, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000031, 9000031, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
    (9000032, 9000032, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample');
  INSERT INTO `stock_reservations` (`stock_reservation_id`, `product_variant_id`, `sales_order_item_id`, `user_id`, `quantity_reserved`, `date_updated`) VALUES
    (9000001, 9000005, 9000037, 9000003, 1, '2026-08-05 10:10:00'),
    (9000002, 9000006, 9000038, 9000003, 2, '2026-08-05 10:10:00'),
    (9000003, 9000007, 9000039, 9000003, 2, '2026-08-12 10:10:00'),
    (9000004, 9000008, 9000040, 9000003, 3, '2026-08-12 10:10:00'),
    (9000005, 9000009, 9000041, 9000003, 3, '2026-08-19 10:10:00'),
    (9000006, 9000010, 9000042, 9000003, 4, '2026-08-19 10:10:00'),
    (9000007, 9000011, 9000043, 9000003, 4, '2026-09-05 10:10:00'),
    (9000008, 9000012, 9000044, 9000003, 1, '2026-09-05 10:10:00');
  INSERT INTO `supplier_invoice_items` (`supplier_invoice_item_id`, `supplier_invoice_id`, `purchase_order_id`, `purchase_order_item_id`, `line_number`, `quantity_invoiced`, `unit_cost`, `discount_amount`, `tax_id`, `vat_amount`) VALUES
    (9000001, 9000001, 9000001, 9000001, 1, 25, 231.42, 0.00, 9000001, 694.26),
    (9000002, 9000001, 9000001, 9000002, 2, 25, 243.02, 0.00, 9000001, 729.06),
    (9000003, 9000002, 9000002, 9000003, 1, 20, 289.42, 0.00, 9000001, 694.61),
    (9000004, 9000002, 9000002, 9000004, 2, 20, 301.02, 0.00, 9000001, 722.45),
    (9000005, 9000003, 9000003, 9000005, 1, 25, 347.42, 0.00, 9000002, 0.00),
    (9000006, 9000003, 9000003, 9000006, 2, 25, 359.02, 0.00, 9000002, 0.00),
    (9000007, 9000004, 9000004, 9000007, 1, 20, 405.42, 0.00, 9000001, 973.01),
    (9000008, 9000004, 9000004, 9000008, 2, 18, 417.02, 0.00, 9000001, 900.76),
    (9000009, 9000005, 9000005, 9000009, 1, 25, 463.42, 0.00, 9000001, 1390.26),
    (9000010, 9000005, 9000005, 9000010, 2, 25, 475.02, 0.00, 9000001, 1425.06),
    (9000011, 9000006, 9000006, 9000011, 1, 20, 173.42, 0.00, 9000002, 0.00),
    (9000012, 9000006, 9000006, 9000012, 2, 20, 185.02, 0.00, 9000002, 0.00),
    (9000013, 9000007, 9000007, 9000013, 1, 25, 231.42, 0.00, 9000001, 694.26),
    (9000014, 9000007, 9000007, 9000014, 2, 25, 243.02, 0.00, 9000001, 729.06),
    (9000015, 9000008, 9000008, 9000015, 1, 20, 289.42, 0.00, 9000001, 694.61),
    (9000016, 9000008, 9000008, 9000016, 2, 20, 301.02, 0.00, 9000001, 722.45);
  INSERT INTO `goods_receipt_items` (`goods_receipt_item_id`, `goods_receipt_id`, `delivery_id`, `purchase_order_id`, `delivery_item_id`, `purchase_order_item_id`) VALUES
    (9000001, 9000001, 9000001, 9000001, 9000001, 9000001),
    (9000002, 9000001, 9000001, 9000001, 9000002, 9000002),
    (9000003, 9000002, 9000002, 9000002, 9000003, 9000003),
    (9000004, 9000002, 9000002, 9000002, 9000004, 9000004),
    (9000005, 9000003, 9000003, 9000003, 9000005, 9000005),
    (9000006, 9000003, 9000003, 9000003, 9000006, 9000006),
    (9000007, 9000004, 9000004, 9000004, 9000007, 9000007),
    (9000008, 9000004, 9000004, 9000004, 9000008, 9000008),
    (9000009, 9000005, 9000005, 9000005, 9000009, 9000009),
    (9000010, 9000005, 9000005, 9000005, 9000010, 9000010),
    (9000011, 9000006, 9000006, 9000006, 9000011, 9000011),
    (9000012, 9000006, 9000006, 9000006, 9000012, 9000012),
    (9000013, 9000007, 9000007, 9000007, 9000013, 9000013),
    (9000014, 9000007, 9000007, 9000007, 9000014, 9000014),
    (9000015, 9000008, 9000008, 9000008, 9000015, 9000015),
    (9000016, 9000008, 9000008, 9000008, 9000016, 9000016);
  INSERT INTO `replenishment_recommendations` (`replenishment_recommendation_id`, `product_variant_id`, `replenishment_policy_id`, `demand_forecast_id`, `purchase_order_item_id`, `on_hand_quantity_snapshot`, `open_supply_quantity_snapshot`, `open_demand_quantity_snapshot`, `lead_time_days_snapshot`, `recommended_quantity`, `recommendation_status_id`, `date_generated`, `date_expires`) VALUES
    (9000001, 9000023, 9000023, NULL, NULL, 18, 0, 0, 6, 65, 1, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
    (9000002, 9000024, 9000024, NULL, NULL, 17, 0, 0, 7, 65, 1, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
    (9000003, 9000025, 9000025, NULL, NULL, 17, 0, 0, 3, 65, 1, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
    (9000004, 9000026, 9000026, NULL, NULL, 16, 0, 0, 4, 65, 2, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
    (9000005, 9000027, 9000027, NULL, NULL, 16, 0, 0, 5, 65, 2, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
    (9000006, 9000028, 9000028, NULL, NULL, 19, 0, 0, 6, 65, 3, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
    (9000007, 9000029, 9000029, NULL, NULL, 19, 0, 0, 7, 65, 3, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
    (9000008, 9000030, 9000030, NULL, 9000030, 18, 0, 0, 3, 65, 4, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
    (9000009, 9000031, 9000031, NULL, NULL, 18, 0, 0, 4, 65, 5, '2026-10-01 09:00:00', '2026-10-08 09:00:00'),
    (9000010, 9000032, 9000032, NULL, NULL, 17, 0, 0, 5, 65, 5, '2026-10-01 09:00:00', '2026-10-08 09:00:00');
  INSERT INTO `tracking_events` (`tracking_event_id`, `delivery_tracking_id`, `user_id`, `event_reference`, `delivery_status_id`, `date_event`, `notes`, `proof_document_path`, `recipient_name`) VALUES
    (9000001, 9000001, 9000007, 'EVENT-0001', 1, '2026-01-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000002, 9000001, 9000007, 'EVENT-0002', 2, '2026-01-08 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000003, 9000001, 9000007, 'EVENT-0003', 3, '2026-01-09 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000004, 9000001, 9000007, 'EVENT-0004', 4, '2026-01-09 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000005, 9000001, 9000007, 'EVENT-0005', 5, '2026-01-10 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000006, 9000001, 9000007, 'EVENT-0006', 7, '2026-01-10 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0001.pdf', 'Receiving Staff'),
    (9000007, 9000002, 9000008, 'EVENT-0007', 1, '2026-01-09 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000008, 9000002, 9000008, 'EVENT-0008', 2, '2026-01-09 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000009, 9000002, 9000008, 'EVENT-0009', 3, '2026-01-10 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000010, 9000002, 9000008, 'EVENT-0010', 4, '2026-01-10 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000011, 9000002, 9000008, 'EVENT-0011', 5, '2026-01-11 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000012, 9000002, 9000008, 'EVENT-0012', 7, '2026-01-11 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0002.pdf', 'Receiving Staff'),
    (9000013, 9000003, 9000009, 'EVENT-0013', 1, '2026-01-10 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000014, 9000003, 9000009, 'EVENT-0014', 2, '2026-01-10 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000015, 9000003, 9000009, 'EVENT-0015', 3, '2026-01-11 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000016, 9000003, 9000009, 'EVENT-0016', 4, '2026-01-11 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000017, 9000003, 9000009, 'EVENT-0017', 5, '2026-01-12 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000018, 9000003, 9000009, 'EVENT-0018', 7, '2026-01-12 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0003.pdf', 'Receiving Staff'),
    (9000019, 9000004, 9000006, 'EVENT-0019', 1, '2026-01-11 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000020, 9000004, 9000006, 'EVENT-0020', 2, '2026-01-11 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000021, 9000004, 9000006, 'EVENT-0021', 3, '2026-01-12 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000022, 9000004, 9000006, 'EVENT-0022', 4, '2026-01-12 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000023, 9000004, 9000006, 'EVENT-0023', 5, '2026-01-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000024, 9000004, 9000006, 'EVENT-0024', 7, '2026-01-13 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0004.pdf', 'Receiving Staff'),
    (9000025, 9000005, 9000007, 'EVENT-0025', 1, '2026-01-12 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000026, 9000005, 9000007, 'EVENT-0026', 2, '2026-01-12 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000027, 9000005, 9000007, 'EVENT-0027', 3, '2026-01-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000028, 9000005, 9000007, 'EVENT-0028', 4, '2026-01-13 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000029, 9000005, 9000007, 'EVENT-0029', 5, '2026-01-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000030, 9000005, 9000007, 'EVENT-0030', 7, '2026-01-14 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0005.pdf', 'Receiving Staff'),
    (9000031, 9000006, 9000008, 'EVENT-0031', 1, '2026-01-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000032, 9000006, 9000008, 'EVENT-0032', 2, '2026-01-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000033, 9000006, 9000008, 'EVENT-0033', 3, '2026-01-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000034, 9000006, 9000008, 'EVENT-0034', 4, '2026-01-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000035, 9000006, 9000008, 'EVENT-0035', 5, '2026-01-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000036, 9000006, 9000008, 'EVENT-0036', 7, '2026-01-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0006.pdf', 'Receiving Staff'),
    (9000037, 9000007, 9000009, 'EVENT-0037', 1, '2026-01-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000038, 9000007, 9000009, 'EVENT-0038', 2, '2026-01-14 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000039, 9000007, 9000009, 'EVENT-0039', 3, '2026-01-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000040, 9000007, 9000009, 'EVENT-0040', 4, '2026-01-15 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000041, 9000007, 9000009, 'EVENT-0041', 5, '2026-01-16 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000042, 9000007, 9000009, 'EVENT-0042', 7, '2026-01-16 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0007.pdf', 'Receiving Staff'),
    (9000043, 9000008, 9000006, 'EVENT-0043', 1, '2026-01-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000044, 9000008, 9000006, 'EVENT-0044', 2, '2026-01-15 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000045, 9000008, 9000006, 'EVENT-0045', 3, '2026-01-16 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000046, 9000008, 9000006, 'EVENT-0046', 4, '2026-01-16 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000047, 9000008, 9000006, 'EVENT-0047', 5, '2026-01-17 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000048, 9000008, 9000006, 'EVENT-0048', 7, '2026-01-17 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0008.pdf', 'Receiving Staff'),
    (9000049, 9000009, 9000007, 'EVENT-0049', 1, '2026-01-16 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000050, 9000009, 9000007, 'EVENT-0050', 2, '2026-01-16 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000051, 9000009, 9000007, 'EVENT-0051', 3, '2026-01-17 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000052, 9000009, 9000007, 'EVENT-0052', 4, '2026-01-17 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000053, 9000010, 9000008, 'EVENT-0053', 1, '2026-01-17 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000054, 9000010, 9000008, 'EVENT-0054', 2, '2026-01-17 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000055, 9000010, 9000008, 'EVENT-0055', 3, '2026-01-18 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000056, 9000010, 9000008, 'EVENT-0056', 4, '2026-01-18 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000057, 9000011, 9000009, 'EVENT-0057', 1, '2026-02-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000058, 9000011, 9000009, 'EVENT-0058', 2, '2026-02-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000059, 9000011, 9000009, 'EVENT-0059', 3, '2026-02-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000060, 9000011, 9000009, 'EVENT-0060', 4, '2026-02-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000061, 9000011, 9000009, 'EVENT-0061', 5, '2026-02-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000062, 9000011, 9000009, 'EVENT-0062', 7, '2026-02-08 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0011.pdf', 'Alex Customer'),
    (9000063, 9000012, 9000006, 'EVENT-0063', 1, '2026-02-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000064, 9000012, 9000006, 'EVENT-0064', 2, '2026-02-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000065, 9000012, 9000006, 'EVENT-0065', 3, '2026-02-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000066, 9000012, 9000006, 'EVENT-0066', 4, '2026-02-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000067, 9000012, 9000006, 'EVENT-0067', 5, '2026-02-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000068, 9000012, 9000006, 'EVENT-0068', 7, '2026-02-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0012.pdf', 'Bea Customer'),
    (9000069, 9000013, 9000007, 'EVENT-0069', 1, '2026-02-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000070, 9000013, 9000007, 'EVENT-0070', 2, '2026-02-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000071, 9000013, 9000007, 'EVENT-0071', 3, '2026-02-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000072, 9000013, 9000007, 'EVENT-0072', 4, '2026-02-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000073, 9000013, 9000007, 'EVENT-0073', 5, '2026-02-22 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000074, 9000013, 9000007, 'EVENT-0074', 7, '2026-02-22 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0013.pdf', 'Carlo Customer'),
    (9000075, 9000014, 9000008, 'EVENT-0075', 1, '2026-03-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000076, 9000014, 9000008, 'EVENT-0076', 2, '2026-03-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000077, 9000014, 9000008, 'EVENT-0077', 3, '2026-03-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000078, 9000014, 9000008, 'EVENT-0078', 4, '2026-03-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000079, 9000014, 9000008, 'EVENT-0079', 5, '2026-03-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000080, 9000014, 9000008, 'EVENT-0080', 7, '2026-03-08 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0014.pdf', 'Dana Customer'),
    (9000081, 9000015, 9000009, 'EVENT-0081', 1, '2026-03-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000082, 9000015, 9000009, 'EVENT-0082', 2, '2026-03-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000083, 9000015, 9000009, 'EVENT-0083', 3, '2026-03-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000084, 9000015, 9000009, 'EVENT-0084', 4, '2026-03-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000085, 9000015, 9000009, 'EVENT-0085', 5, '2026-03-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000086, 9000015, 9000009, 'EVENT-0086', 7, '2026-03-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0015.pdf', 'Eli Customer'),
    (9000087, 9000016, 9000006, 'EVENT-0087', 1, '2026-03-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000088, 9000016, 9000006, 'EVENT-0088', 2, '2026-03-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000089, 9000016, 9000006, 'EVENT-0089', 3, '2026-03-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000090, 9000016, 9000006, 'EVENT-0090', 4, '2026-03-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000091, 9000016, 9000006, 'EVENT-0091', 5, '2026-03-22 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000092, 9000016, 9000006, 'EVENT-0092', 7, '2026-03-22 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0016.pdf', 'Faith Customer'),
    (9000093, 9000017, 9000007, 'EVENT-0093', 1, '2026-04-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000094, 9000017, 9000007, 'EVENT-0094', 2, '2026-04-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000095, 9000017, 9000007, 'EVENT-0095', 3, '2026-04-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000096, 9000017, 9000007, 'EVENT-0096', 4, '2026-04-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000097, 9000017, 9000007, 'EVENT-0097', 5, '2026-04-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000098, 9000017, 9000007, 'EVENT-0098', 7, '2026-04-08 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0017.pdf', 'Gio Customer'),
    (9000099, 9000018, 9000008, 'EVENT-0099', 1, '2026-04-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000100, 9000018, 9000008, 'EVENT-0100', 2, '2026-04-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000101, 9000018, 9000008, 'EVENT-0101', 3, '2026-04-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000102, 9000018, 9000008, 'EVENT-0102', 4, '2026-04-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000103, 9000018, 9000008, 'EVENT-0103', 5, '2026-04-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000104, 9000018, 9000008, 'EVENT-0104', 7, '2026-04-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0018.pdf', 'Hana Customer'),
    (9000105, 9000019, 9000009, 'EVENT-0105', 1, '2026-04-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000106, 9000019, 9000009, 'EVENT-0106', 2, '2026-04-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000107, 9000019, 9000009, 'EVENT-0107', 3, '2026-04-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000108, 9000019, 9000009, 'EVENT-0108', 4, '2026-04-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000109, 9000019, 9000009, 'EVENT-0109', 5, '2026-04-22 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000110, 9000019, 9000009, 'EVENT-0110', 7, '2026-04-22 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0019.pdf', 'Ivan Customer'),
    (9000111, 9000020, 9000006, 'EVENT-0111', 1, '2026-05-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000112, 9000020, 9000006, 'EVENT-0112', 2, '2026-05-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000113, 9000020, 9000006, 'EVENT-0113', 3, '2026-05-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000114, 9000020, 9000006, 'EVENT-0114', 4, '2026-05-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000115, 9000020, 9000006, 'EVENT-0115', 5, '2026-05-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000116, 9000020, 9000006, 'EVENT-0116', 7, '2026-05-08 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0020.pdf', 'Jade Customer'),
    (9000117, 9000021, 9000007, 'EVENT-0117', 1, '2026-05-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000118, 9000021, 9000007, 'EVENT-0118', 2, '2026-05-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000119, 9000021, 9000007, 'EVENT-0119', 3, '2026-05-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000120, 9000021, 9000007, 'EVENT-0120', 4, '2026-05-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000121, 9000021, 9000007, 'EVENT-0121', 5, '2026-05-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000122, 9000021, 9000007, 'EVENT-0122', 7, '2026-05-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0021.pdf', 'Kai Customer'),
    (9000123, 9000022, 9000008, 'EVENT-0123', 1, '2026-05-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000124, 9000022, 9000008, 'EVENT-0124', 2, '2026-05-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000125, 9000022, 9000008, 'EVENT-0125', 3, '2026-05-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000126, 9000022, 9000008, 'EVENT-0126', 4, '2026-05-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000127, 9000022, 9000008, 'EVENT-0127', 5, '2026-05-22 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000128, 9000022, 9000008, 'EVENT-0128', 7, '2026-05-22 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0022.pdf', 'Lara Customer'),
    (9000129, 9000023, 9000009, 'EVENT-0129', 1, '2026-06-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000130, 9000023, 9000009, 'EVENT-0130', 2, '2026-06-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000131, 9000023, 9000009, 'EVENT-0131', 3, '2026-06-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000132, 9000023, 9000009, 'EVENT-0132', 4, '2026-06-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000133, 9000023, 9000009, 'EVENT-0133', 5, '2026-06-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000134, 9000023, 9000009, 'EVENT-0134', 7, '2026-06-08 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0023.pdf', 'Mika Customer'),
    (9000135, 9000024, 9000006, 'EVENT-0135', 1, '2026-06-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000136, 9000024, 9000006, 'EVENT-0136', 2, '2026-06-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000137, 9000024, 9000006, 'EVENT-0137', 3, '2026-06-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000138, 9000024, 9000006, 'EVENT-0138', 4, '2026-06-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000139, 9000024, 9000006, 'EVENT-0139', 5, '2026-06-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000140, 9000024, 9000006, 'EVENT-0140', 7, '2026-06-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0024.pdf', 'Noah Customer'),
    (9000141, 9000025, 9000007, 'EVENT-0141', 1, '2026-06-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000142, 9000025, 9000007, 'EVENT-0142', 2, '2026-06-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000143, 9000025, 9000007, 'EVENT-0143', 3, '2026-06-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000144, 9000025, 9000007, 'EVENT-0144', 4, '2026-06-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000145, 9000026, 9000008, 'EVENT-0145', 1, '2026-07-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000146, 9000026, 9000008, 'EVENT-0146', 2, '2026-07-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000147, 9000026, 9000008, 'EVENT-0147', 3, '2026-07-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000148, 9000026, 9000008, 'EVENT-0148', 4, '2026-07-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000149, 9000027, 9000009, 'EVENT-0149', 1, '2026-07-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000150, 9000027, 9000009, 'EVENT-0150', 2, '2026-07-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000151, 9000027, 9000009, 'EVENT-0151', 3, '2026-07-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000152, 9000027, 9000009, 'EVENT-0152', 4, '2026-07-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000153, 9000028, 9000006, 'EVENT-0153', 1, '2026-07-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000154, 9000028, 9000006, 'EVENT-0154', 2, '2026-07-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000155, 9000028, 9000006, 'EVENT-0155', 3, '2026-07-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
    (9000156, 9000028, 9000006, 'EVENT-0156', 4, '2026-07-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL);
  INSERT INTO `inspection_attachments` (`inspection_attachment_id`, `goods_receipt_item_id`, `user_id`, `file_path`, `attachment_description`, `date_uploaded`) VALUES
    (9000001, 9000004, 9000006, 'inspection/INSPECT-0004.jpg', 'Placeholder path for synthetic inspection evidence', '2026-01-11 15:30:00'),
    (9000002, 9000008, 9000006, 'inspection/INSPECT-0008.jpg', 'Placeholder path for synthetic inspection evidence', '2026-01-13 15:30:00'),
    (9000003, 9000012, 9000006, 'inspection/INSPECT-0012.jpg', 'Placeholder path for synthetic inspection evidence', '2026-01-15 15:30:00'),
    (9000004, 9000016, 9000006, 'inspection/INSPECT-0016.jpg', 'Placeholder path for synthetic inspection evidence', '2026-01-17 15:30:00');
  INSERT INTO `invoice_receipt_allocations` (`invoice_receipt_allocation_id`, `supplier_invoice_item_id`, `goods_receipt_item_id`, `purchase_order_item_id`, `user_id`, `quantity_allocated`, `date_reviewed`) VALUES
    (9000001, 9000001, 9000001, 9000001, 9000004, 25, '2026-01-11 11:00:00'),
    (9000002, 9000002, 9000002, 9000002, 9000004, 25, '2026-01-11 11:00:00'),
    (9000003, 9000003, 9000003, 9000003, 9000004, 20, '2026-01-12 11:00:00'),
    (9000004, 9000004, 9000004, 9000004, 9000004, 20, '2026-01-12 11:00:00'),
    (9000005, 9000005, 9000005, 9000005, 9000004, 25, '2026-01-13 11:00:00'),
    (9000006, 9000006, 9000006, 9000006, 9000004, 25, '2026-01-13 11:00:00'),
    (9000007, 9000007, 9000007, 9000007, 9000004, 20, '2026-01-14 11:00:00'),
    (9000008, 9000008, 9000008, 9000008, 9000004, 18, '2026-01-14 11:00:00'),
    (9000009, 9000009, 9000009, 9000009, 9000004, 25, '2026-01-15 11:00:00'),
    (9000010, 9000010, 9000010, 9000010, 9000004, 25, '2026-01-15 11:00:00'),
    (9000011, 9000011, 9000011, 9000011, 9000004, 20, '2026-01-16 11:00:00'),
    (9000012, 9000012, 9000012, 9000012, 9000004, 20, '2026-01-16 11:00:00'),
    (9000013, 9000013, 9000013, 9000013, 9000004, 25, '2026-01-17 11:00:00'),
    (9000014, 9000014, 9000014, 9000014, 9000004, 25, '2026-01-17 11:00:00'),
    (9000015, 9000015, 9000015, 9000015, 9000004, 20, '2026-01-18 11:00:00'),
    (9000016, 9000016, 9000016, 9000016, 9000004, 20, '2026-01-18 11:00:00');
  INSERT INTO `purchase_order_receipt_approvals` (`receipt_approval_id`, `goods_receipt_item_id`, `receipt_approval_status_id`, `user_id`, `quantity_received`, `quantity_accepted`, `quantity_rejected`, `date_inspected`, `rejection_reason`) VALUES
    (9000001, 9000001, 2, 9000004, 25, 25, 0, '2026-01-10 16:00:00', NULL),
    (9000002, 9000002, 2, 9000004, 25, 25, 0, '2026-01-10 16:00:00', NULL),
    (9000003, 9000003, 2, 9000004, 20, 20, 0, '2026-01-11 16:00:00', NULL),
    (9000004, 9000004, 2, 9000004, 20, 20, 0, '2026-01-11 16:00:00', NULL),
    (9000005, 9000005, 2, 9000004, 25, 25, 0, '2026-01-12 16:00:00', NULL),
    (9000006, 9000006, 2, 9000004, 25, 25, 0, '2026-01-12 16:00:00', NULL),
    (9000007, 9000007, 2, 9000004, 20, 20, 0, '2026-01-13 16:00:00', NULL),
    (9000008, 9000008, 3, 9000004, 20, 18, 2, '2026-01-13 16:00:00', 'inspection found two pieces with damaged seams'),
    (9000009, 9000009, 2, 9000004, 25, 25, 0, '2026-01-14 16:00:00', NULL),
    (9000010, 9000010, 2, 9000004, 25, 25, 0, '2026-01-14 16:00:00', NULL),
    (9000011, 9000011, 2, 9000004, 20, 20, 0, '2026-01-15 16:00:00', NULL),
    (9000012, 9000012, 2, 9000004, 20, 20, 0, '2026-01-15 16:00:00', NULL),
    (9000013, 9000013, 2, 9000004, 25, 25, 0, '2026-01-16 16:00:00', NULL),
    (9000014, 9000014, 2, 9000004, 25, 25, 0, '2026-01-16 16:00:00', NULL),
    (9000015, 9000015, 2, 9000004, 20, 20, 0, '2026-01-17 16:00:00', NULL),
    (9000016, 9000016, 2, 9000004, 20, 20, 0, '2026-01-17 16:00:00', NULL);
  INSERT INTO `replenishment_reviews` (`replenishment_recommendation_id`, `user_id`, `date_reviewed`, `review_notes`) VALUES
    (9000004, 9000001, '2026-10-20 10:00:00', 'Owner approved recommended whole-piece order quantity'),
    (9000005, 9000001, '2026-10-20 10:00:00', 'Owner approved recommended whole-piece order quantity'),
    (9000006, 9000001, '2026-10-20 10:00:00', 'Purchasing deferred after merchandising review'),
    (9000007, 9000001, '2026-10-20 10:00:00', 'Purchasing deferred after merchandising review'),
    (9000008, 9000001, '2026-10-20 10:00:00', 'Owner approved recommended whole-piece order quantity');
  INSERT INTO `stock_movements` (`stock_movement_id`, `product_variant_id`, `user_id`, `goods_receipt_item_id`, `delivery_item_id`, `stock_adjustment_id`, `original_movement_id`, `movement_type`, `quantity_change`, `unit_cost`, `transaction_request_key`, `date_posted`) VALUES
    (9000001, 9000001, 9000003, NULL, NULL, 9000001, NULL, 'adjustment', 120, 231.42, 'STOCK-0001', '2026-01-03 09:05:00'),
    (9000002, 9000002, 9000003, NULL, NULL, 9000002, NULL, 'adjustment', 140, 243.02, 'STOCK-0002', '2026-01-03 09:05:00'),
    (9000003, 9000003, 9000003, NULL, NULL, 9000003, NULL, 'adjustment', 160, 289.42, 'STOCK-0003', '2026-01-03 09:05:00'),
    (9000004, 9000004, 9000003, NULL, NULL, 9000004, NULL, 'adjustment', 180, 301.02, 'STOCK-0004', '2026-01-03 09:05:00'),
    (9000005, 9000005, 9000003, NULL, NULL, 9000005, NULL, 'adjustment', 100, 347.42, 'STOCK-0005', '2026-01-03 09:05:00'),
    (9000006, 9000006, 9000003, NULL, NULL, 9000006, NULL, 'adjustment', 120, 359.02, 'STOCK-0006', '2026-01-03 09:05:00'),
    (9000007, 9000007, 9000003, NULL, NULL, 9000007, NULL, 'adjustment', 140, 405.42, 'STOCK-0007', '2026-01-03 09:05:00'),
    (9000008, 9000008, 9000003, NULL, NULL, 9000008, NULL, 'adjustment', 160, 417.02, 'STOCK-0008', '2026-01-03 09:05:00'),
    (9000009, 9000009, 9000003, NULL, NULL, 9000009, NULL, 'adjustment', 180, 463.42, 'STOCK-0009', '2026-01-03 09:05:00'),
    (9000010, 9000010, 9000003, NULL, NULL, 9000010, NULL, 'adjustment', 100, 475.02, 'STOCK-0010', '2026-01-03 09:05:00'),
    (9000011, 9000011, 9000003, NULL, NULL, 9000011, NULL, 'adjustment', 120, 173.42, 'STOCK-0011', '2026-01-03 09:05:00'),
    (9000012, 9000012, 9000003, NULL, NULL, 9000012, NULL, 'adjustment', 140, 185.02, 'STOCK-0012', '2026-01-03 09:05:00'),
    (9000013, 9000013, 9000003, NULL, NULL, 9000013, NULL, 'adjustment', 160, 231.42, 'STOCK-0013', '2026-01-03 09:05:00'),
    (9000014, 9000014, 9000003, NULL, NULL, 9000014, NULL, 'adjustment', 180, 243.02, 'STOCK-0014', '2026-01-03 09:05:00'),
    (9000015, 9000015, 9000003, NULL, NULL, 9000015, NULL, 'adjustment', 100, 289.42, 'STOCK-0015', '2026-01-03 09:05:00'),
    (9000016, 9000016, 9000003, NULL, NULL, 9000016, NULL, 'adjustment', 120, 301.02, 'STOCK-0016', '2026-01-03 09:05:00'),
    (9000017, 9000017, 9000003, NULL, NULL, 9000017, NULL, 'adjustment', 140, 347.42, 'STOCK-0017', '2026-01-03 09:05:00'),
    (9000018, 9000018, 9000003, NULL, NULL, 9000018, NULL, 'adjustment', 160, 359.02, 'STOCK-0018', '2026-01-03 09:05:00'),
    (9000019, 9000019, 9000003, NULL, NULL, 9000019, NULL, 'adjustment', 180, 405.42, 'STOCK-0019', '2026-01-03 09:05:00'),
    (9000020, 9000020, 9000003, NULL, NULL, 9000020, NULL, 'adjustment', 100, 417.02, 'STOCK-0020', '2026-01-03 09:05:00'),
    (9000021, 9000021, 9000003, NULL, NULL, 9000021, NULL, 'adjustment', 120, 463.42, 'STOCK-0021', '2026-01-03 09:05:00'),
    (9000022, 9000022, 9000003, NULL, NULL, 9000022, NULL, 'adjustment', 140, 475.02, 'STOCK-0022', '2026-01-03 09:05:00'),
    (9000023, 9000023, 9000003, NULL, NULL, 9000023, NULL, 'adjustment', 20, 173.42, 'STOCK-0023', '2026-01-03 09:05:00'),
    (9000024, 9000024, 9000003, NULL, NULL, 9000024, NULL, 'adjustment', 20, 185.02, 'STOCK-0024', '2026-01-03 09:05:00'),
    (9000025, 9000025, 9000003, NULL, NULL, 9000025, NULL, 'adjustment', 20, 231.42, 'STOCK-0025', '2026-01-03 09:05:00'),
    (9000026, 9000026, 9000003, NULL, NULL, 9000026, NULL, 'adjustment', 20, 243.02, 'STOCK-0026', '2026-01-03 09:05:00'),
    (9000027, 9000027, 9000003, NULL, NULL, 9000027, NULL, 'adjustment', 20, 289.42, 'STOCK-0027', '2026-01-03 09:05:00'),
    (9000028, 9000028, 9000003, NULL, NULL, 9000028, NULL, 'adjustment', 20, 301.02, 'STOCK-0028', '2026-01-03 09:05:00'),
    (9000029, 9000029, 9000003, NULL, NULL, 9000029, NULL, 'adjustment', 20, 347.42, 'STOCK-0029', '2026-01-03 09:05:00'),
    (9000030, 9000030, 9000003, NULL, NULL, 9000030, NULL, 'adjustment', 20, 359.02, 'STOCK-0030', '2026-01-03 09:05:00'),
    (9000031, 9000031, 9000003, NULL, NULL, 9000031, NULL, 'adjustment', 20, 405.42, 'STOCK-0031', '2026-01-03 09:05:00'),
    (9000032, 9000032, 9000003, NULL, NULL, 9000032, NULL, 'adjustment', 20, 417.02, 'STOCK-0032', '2026-01-03 09:05:00'),
    (9000033, 9000001, 9000003, 9000001, NULL, NULL, NULL, 'receipt', 25, 231.42, 'STOCK-0033', '2026-01-10 16:10:00'),
    (9000034, 9000002, 9000003, 9000002, NULL, NULL, NULL, 'receipt', 25, 243.02, 'STOCK-0034', '2026-01-10 16:10:00'),
    (9000035, 9000003, 9000003, 9000003, NULL, NULL, NULL, 'receipt', 20, 289.42, 'STOCK-0035', '2026-01-11 16:10:00'),
    (9000036, 9000004, 9000003, 9000004, NULL, NULL, NULL, 'receipt', 20, 301.02, 'STOCK-0036', '2026-01-11 16:10:00'),
    (9000037, 9000005, 9000003, 9000005, NULL, NULL, NULL, 'receipt', 25, 347.42, 'STOCK-0037', '2026-01-12 16:10:00'),
    (9000038, 9000006, 9000003, 9000006, NULL, NULL, NULL, 'receipt', 25, 359.02, 'STOCK-0038', '2026-01-12 16:10:00'),
    (9000039, 9000007, 9000003, 9000007, NULL, NULL, NULL, 'receipt', 20, 405.42, 'STOCK-0039', '2026-01-13 16:10:00'),
    (9000040, 9000008, 9000003, 9000008, NULL, NULL, NULL, 'receipt', 18, 417.02, 'STOCK-0040', '2026-01-13 16:10:00'),
    (9000041, 9000009, 9000003, 9000009, NULL, NULL, NULL, 'receipt', 25, 463.42, 'STOCK-0041', '2026-01-14 16:10:00'),
    (9000042, 9000010, 9000003, 9000010, NULL, NULL, NULL, 'receipt', 25, 475.02, 'STOCK-0042', '2026-01-14 16:10:00'),
    (9000043, 9000011, 9000003, 9000011, NULL, NULL, NULL, 'receipt', 20, 173.42, 'STOCK-0043', '2026-01-15 16:10:00'),
    (9000044, 9000012, 9000003, 9000012, NULL, NULL, NULL, 'receipt', 20, 185.02, 'STOCK-0044', '2026-01-15 16:10:00'),
    (9000045, 9000013, 9000003, 9000013, NULL, NULL, NULL, 'receipt', 25, 231.42, 'STOCK-0045', '2026-01-16 16:10:00'),
    (9000046, 9000014, 9000003, 9000014, NULL, NULL, NULL, 'receipt', 25, 243.02, 'STOCK-0046', '2026-01-16 16:10:00'),
    (9000047, 9000015, 9000003, 9000015, NULL, NULL, NULL, 'receipt', 20, 289.42, 'STOCK-0047', '2026-01-17 16:10:00'),
    (9000048, 9000016, 9000003, 9000016, NULL, NULL, NULL, 'receipt', 20, 301.02, 'STOCK-0048', '2026-01-17 16:10:00'),
    (9000049, 9000001, 9000003, NULL, 9000021, NULL, NULL, 'dispatch', -3, 231.42, 'STOCK-0049', '2026-02-07 08:05:00'),
    (9000050, 9000002, 9000003, NULL, 9000022, NULL, NULL, 'dispatch', -4, 243.02, 'STOCK-0050', '2026-02-07 08:05:00'),
    (9000051, 9000003, 9000003, NULL, 9000023, NULL, NULL, 'dispatch', -4, 289.42, 'STOCK-0051', '2026-02-14 08:05:00'),
    (9000052, 9000004, 9000003, NULL, 9000024, NULL, NULL, 'dispatch', -1, 301.02, 'STOCK-0052', '2026-02-14 08:05:00'),
    (9000053, 9000005, 9000003, NULL, 9000025, NULL, NULL, 'dispatch', -1, 347.42, 'STOCK-0053', '2026-02-21 08:05:00'),
    (9000054, 9000006, 9000003, NULL, 9000026, NULL, NULL, 'dispatch', -2, 359.02, 'STOCK-0054', '2026-02-21 08:05:00'),
    (9000055, 9000007, 9000003, NULL, 9000027, NULL, NULL, 'dispatch', -2, 405.42, 'STOCK-0055', '2026-03-07 08:05:00'),
    (9000056, 9000008, 9000003, NULL, 9000028, NULL, NULL, 'dispatch', -3, 417.02, 'STOCK-0056', '2026-03-07 08:05:00'),
    (9000057, 9000009, 9000003, NULL, 9000029, NULL, NULL, 'dispatch', -3, 463.42, 'STOCK-0057', '2026-03-14 08:05:00'),
    (9000058, 9000010, 9000003, NULL, 9000030, NULL, NULL, 'dispatch', -4, 475.02, 'STOCK-0058', '2026-03-14 08:05:00'),
    (9000059, 9000011, 9000003, NULL, 9000031, NULL, NULL, 'dispatch', -4, 173.42, 'STOCK-0059', '2026-03-21 08:05:00'),
    (9000060, 9000012, 9000003, NULL, 9000032, NULL, NULL, 'dispatch', -1, 185.02, 'STOCK-0060', '2026-03-21 08:05:00'),
    (9000061, 9000013, 9000003, NULL, 9000033, NULL, NULL, 'dispatch', -1, 231.42, 'STOCK-0061', '2026-04-07 08:05:00'),
    (9000062, 9000014, 9000003, NULL, 9000034, NULL, NULL, 'dispatch', -2, 243.02, 'STOCK-0062', '2026-04-07 08:05:00'),
    (9000063, 9000015, 9000003, NULL, 9000035, NULL, NULL, 'dispatch', -2, 289.42, 'STOCK-0063', '2026-04-14 08:05:00'),
    (9000064, 9000016, 9000003, NULL, 9000036, NULL, NULL, 'dispatch', -3, 301.02, 'STOCK-0064', '2026-04-14 08:05:00'),
    (9000065, 9000017, 9000003, NULL, 9000037, NULL, NULL, 'dispatch', -3, 347.42, 'STOCK-0065', '2026-04-21 08:05:00'),
    (9000066, 9000018, 9000003, NULL, 9000038, NULL, NULL, 'dispatch', -4, 359.02, 'STOCK-0066', '2026-04-21 08:05:00'),
    (9000067, 9000019, 9000003, NULL, 9000039, NULL, NULL, 'dispatch', -4, 405.42, 'STOCK-0067', '2026-05-07 08:05:00'),
    (9000068, 9000020, 9000003, NULL, 9000040, NULL, NULL, 'dispatch', -1, 417.02, 'STOCK-0068', '2026-05-07 08:05:00'),
    (9000069, 9000021, 9000003, NULL, 9000041, NULL, NULL, 'dispatch', -1, 463.42, 'STOCK-0069', '2026-05-14 08:05:00'),
    (9000070, 9000022, 9000003, NULL, 9000042, NULL, NULL, 'dispatch', -2, 475.02, 'STOCK-0070', '2026-05-14 08:05:00'),
    (9000071, 9000023, 9000003, NULL, 9000043, NULL, NULL, 'dispatch', -2, 173.42, 'STOCK-0071', '2026-05-21 08:05:00'),
    (9000072, 9000024, 9000003, NULL, 9000044, NULL, NULL, 'dispatch', -3, 185.02, 'STOCK-0072', '2026-05-21 08:05:00'),
    (9000073, 9000025, 9000003, NULL, 9000045, NULL, NULL, 'dispatch', -3, 231.42, 'STOCK-0073', '2026-06-07 08:05:00'),
    (9000074, 9000026, 9000003, NULL, 9000046, NULL, NULL, 'dispatch', -4, 243.02, 'STOCK-0074', '2026-06-07 08:05:00'),
    (9000075, 9000027, 9000003, NULL, 9000047, NULL, NULL, 'dispatch', -4, 289.42, 'STOCK-0075', '2026-06-14 08:05:00'),
    (9000076, 9000028, 9000003, NULL, 9000048, NULL, NULL, 'dispatch', -1, 301.02, 'STOCK-0076', '2026-06-14 08:05:00'),
    (9000077, 9000029, 9000003, NULL, 9000049, NULL, NULL, 'dispatch', -1, 347.42, 'STOCK-0077', '2026-06-21 08:05:00'),
    (9000078, 9000030, 9000003, NULL, 9000050, NULL, NULL, 'dispatch', -2, 359.02, 'STOCK-0078', '2026-06-21 08:05:00'),
    (9000079, 9000031, 9000003, NULL, 9000051, NULL, NULL, 'dispatch', -2, 405.42, 'STOCK-0079', '2026-07-07 08:05:00'),
    (9000080, 9000032, 9000003, NULL, 9000052, NULL, NULL, 'dispatch', -3, 417.02, 'STOCK-0080', '2026-07-07 08:05:00'),
    (9000081, 9000001, 9000003, NULL, 9000053, NULL, NULL, 'dispatch', -3, 231.42, 'STOCK-0081', '2026-07-14 08:05:00'),
    (9000082, 9000002, 9000003, NULL, 9000054, NULL, NULL, 'dispatch', -4, 243.02, 'STOCK-0082', '2026-07-14 08:05:00'),
    (9000083, 9000003, 9000003, NULL, 9000055, NULL, NULL, 'dispatch', -4, 289.42, 'STOCK-0083', '2026-07-21 08:05:00'),
    (9000084, 9000004, 9000003, NULL, 9000056, NULL, NULL, 'dispatch', -1, 301.02, 'STOCK-0084', '2026-07-21 08:05:00');
  COMMIT;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `approval_statuses`
--

CREATE TABLE `approval_statuses` (
  `approval_status_id` bigint(20) NOT NULL,
  `status_code` varchar(20) NOT NULL,
  `status_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approval_statuses`
--

INSERT INTO `approval_statuses` (`approval_status_id`, `status_code`, `status_name`) VALUES
(1, 'approved', 'Approved'),
(2, 'rejected', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `audit_log_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'audit actor',
  `action_type` varchar(60) NOT NULL,
  `record_table` varchar(80) NOT NULL,
  `record_identifier` varchar(100) NOT NULL,
  `previous_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`previous_values`)),
  `updated_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`updated_values`)),
  `date_occurred` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`audit_log_id`, `user_id`, `action_type`, `record_table`, `record_identifier`, `previous_values`, `updated_values`, `date_occurred`) VALUES
(9000001, 9000003, 'purchase_order_created', 'purchase_orders', '9000001', NULL, '{\"purchase_order_id\": 9000001, \"sample_record\": true}', '2026-01-05 09:00:00'),
(9000002, 9000003, 'purchase_order_created', 'purchase_orders', '9000002', NULL, '{\"purchase_order_id\": 9000002, \"sample_record\": true}', '2026-01-06 09:00:00'),
(9000003, 9000003, 'purchase_order_created', 'purchase_orders', '9000003', NULL, '{\"purchase_order_id\": 9000003, \"sample_record\": true}', '2026-01-07 09:00:00'),
(9000004, 9000003, 'purchase_order_created', 'purchase_orders', '9000004', NULL, '{\"purchase_order_id\": 9000004, \"sample_record\": true}', '2026-01-08 09:00:00'),
(9000005, 9000003, 'purchase_order_created', 'purchase_orders', '9000005', NULL, '{\"purchase_order_id\": 9000005, \"sample_record\": true}', '2026-01-09 09:00:00'),
(9000006, 9000003, 'purchase_order_created', 'purchase_orders', '9000006', NULL, '{\"purchase_order_id\": 9000006, \"sample_record\": true}', '2026-01-10 09:00:00'),
(9000007, 9000003, 'purchase_order_created', 'purchase_orders', '9000007', NULL, '{\"purchase_order_id\": 9000007, \"sample_record\": true}', '2026-01-11 09:00:00'),
(9000008, 9000003, 'purchase_order_created', 'purchase_orders', '9000008', NULL, '{\"purchase_order_id\": 9000008, \"sample_record\": true}', '2026-01-12 09:00:00'),
(9000009, 9000003, 'purchase_order_created', 'purchase_orders', '9000009', NULL, '{\"purchase_order_id\": 9000009, \"sample_record\": true}', '2026-01-13 09:00:00'),
(9000010, 9000003, 'purchase_order_created', 'purchase_orders', '9000010', NULL, '{\"purchase_order_id\": 9000010, \"sample_record\": true}', '2026-01-14 09:00:00'),
(9000011, 9000003, 'purchase_order_created', 'purchase_orders', '9000011', NULL, '{\"purchase_order_id\": 9000011, \"sample_record\": true}', '2026-01-15 09:00:00'),
(9000012, 9000003, 'purchase_order_created', 'purchase_orders', '9000012', NULL, '{\"purchase_order_id\": 9000012, \"sample_record\": true}', '2026-01-16 09:00:00'),
(9000013, 9000003, 'purchase_order_created', 'purchase_orders', '9000013', NULL, '{\"purchase_order_id\": 9000013, \"sample_record\": true}', '2026-01-17 09:00:00'),
(9000014, 9000003, 'purchase_order_created', 'purchase_orders', '9000014', NULL, '{\"purchase_order_id\": 9000014, \"sample_record\": true}', '2026-01-18 09:00:00'),
(9000015, 9000003, 'purchase_order_created', 'purchase_orders', '9000015', NULL, '{\"purchase_order_id\": 9000015, \"sample_record\": true}', '2026-10-20 09:00:00'),
(9000016, 9000004, 'sale_posted', 'sales', '9000001', NULL, '{\"sale_id\": 9000001, \"sample_record\": true}', '2026-02-05 10:00:00'),
(9000017, 9000005, 'sale_posted', 'sales', '9000002', NULL, '{\"sale_id\": 9000002, \"sample_record\": true}', '2026-02-12 10:00:00'),
(9000018, 9000003, 'sale_posted', 'sales', '9000003', NULL, '{\"sale_id\": 9000003, \"sample_record\": true}', '2026-02-19 10:00:00'),
(9000019, 9000004, 'sale_posted', 'sales', '9000004', NULL, '{\"sale_id\": 9000004, \"sample_record\": true}', '2026-03-05 10:00:00'),
(9000020, 9000005, 'sale_posted', 'sales', '9000005', NULL, '{\"sale_id\": 9000005, \"sample_record\": true}', '2026-03-12 10:00:00'),
(9000021, 9000003, 'sale_posted', 'sales', '9000006', NULL, '{\"sale_id\": 9000006, \"sample_record\": true}', '2026-03-19 10:00:00'),
(9000022, 9000004, 'sale_posted', 'sales', '9000007', NULL, '{\"sale_id\": 9000007, \"sample_record\": true}', '2026-04-05 10:00:00'),
(9000023, 9000005, 'sale_posted', 'sales', '9000008', NULL, '{\"sale_id\": 9000008, \"sample_record\": true}', '2026-04-12 10:00:00'),
(9000024, 9000003, 'sale_posted', 'sales', '9000009', NULL, '{\"sale_id\": 9000009, \"sample_record\": true}', '2026-04-19 10:00:00'),
(9000025, 9000004, 'sale_posted', 'sales', '9000010', NULL, '{\"sale_id\": 9000010, \"sample_record\": true}', '2026-05-05 10:00:00'),
(9000026, 9000005, 'sale_posted', 'sales', '9000011', NULL, '{\"sale_id\": 9000011, \"sample_record\": true}', '2026-05-12 10:00:00'),
(9000027, 9000003, 'sale_posted', 'sales', '9000012', NULL, '{\"sale_id\": 9000012, \"sample_record\": true}', '2026-05-19 10:00:00'),
(9000028, 9000004, 'sale_posted', 'sales', '9000013', NULL, '{\"sale_id\": 9000013, \"sample_record\": true}', '2026-06-05 10:00:00'),
(9000029, 9000005, 'sale_posted', 'sales', '9000014', NULL, '{\"sale_id\": 9000014, \"sample_record\": true}', '2026-06-12 10:00:00'),
(9000030, 9000003, 'sale_posted', 'sales', '9000015', NULL, '{\"sale_id\": 9000015, \"sample_record\": true}', '2026-06-19 10:00:00'),
(9000031, 9000004, 'sale_posted', 'sales', '9000016', NULL, '{\"sale_id\": 9000016, \"sample_record\": true}', '2026-07-05 10:00:00'),
(9000032, 9000005, 'sale_posted', 'sales', '9000017', NULL, '{\"sale_id\": 9000017, \"sample_record\": true}', '2026-07-12 10:00:00'),
(9000033, 9000003, 'sale_posted', 'sales', '9000018', NULL, '{\"sale_id\": 9000018, \"sample_record\": true}', '2026-07-19 10:00:00'),
(9000034, 9000004, 'sale_posted', 'sales', '9000019', NULL, '{\"sale_id\": 9000019, \"sample_record\": true}', '2026-08-05 10:00:00'),
(9000035, 9000005, 'sale_posted', 'sales', '9000020', NULL, '{\"sale_id\": 9000020, \"sample_record\": true}', '2026-08-12 10:00:00'),
(9000036, 9000003, 'sale_posted', 'sales', '9000021', NULL, '{\"sale_id\": 9000021, \"sample_record\": true}', '2026-08-19 10:00:00'),
(9000037, 9000004, 'sale_posted', 'sales', '9000022', NULL, '{\"sale_id\": 9000022, \"sample_record\": true}', '2026-09-05 10:00:00'),
(9000038, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000001', NULL, '{\"replenishment_recommendation_id\": 9000001, \"sample_record\": true}', '2026-10-20 09:00:00'),
(9000039, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000002', NULL, '{\"replenishment_recommendation_id\": 9000002, \"sample_record\": true}', '2026-10-20 09:00:00'),
(9000040, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000003', NULL, '{\"replenishment_recommendation_id\": 9000003, \"sample_record\": true}', '2026-10-20 09:00:00'),
(9000041, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000004', NULL, '{\"replenishment_recommendation_id\": 9000004, \"sample_record\": true}', '2026-10-20 09:00:00'),
(9000042, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000005', NULL, '{\"replenishment_recommendation_id\": 9000005, \"sample_record\": true}', '2026-10-20 09:00:00'),
(9000043, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000006', NULL, '{\"replenishment_recommendation_id\": 9000006, \"sample_record\": true}', '2026-10-20 09:00:00'),
(9000044, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000007', NULL, '{\"replenishment_recommendation_id\": 9000007, \"sample_record\": true}', '2026-10-20 09:00:00'),
(9000045, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000008', NULL, '{\"replenishment_recommendation_id\": 9000008, \"sample_record\": true}', '2026-10-20 09:00:00'),
(9000046, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000009', NULL, '{\"replenishment_recommendation_id\": 9000009, \"sample_record\": true}', '2026-10-01 09:00:00'),
(9000047, 9000003, 'recommendation_generated', 'replenishment_recommendations', '9000010', NULL, '{\"replenishment_recommendation_id\": 9000010, \"sample_record\": true}', '2026-10-01 09:00:00'),
(9000048, 9000003, 'stock_posted', 'stock_movements', '9000001', NULL, '{\"stock_movement_id\": 9000001, \"sample_record\": true}', '2026-01-03 09:05:00'),
(9000049, 9000003, 'stock_posted', 'stock_movements', '9000002', NULL, '{\"stock_movement_id\": 9000002, \"sample_record\": true}', '2026-01-03 09:05:00'),
(9000050, 9000003, 'stock_posted', 'stock_movements', '9000003', NULL, '{\"stock_movement_id\": 9000003, \"sample_record\": true}', '2026-01-03 09:05:00'),
(9000051, 9000003, 'stock_posted', 'stock_movements', '9000004', NULL, '{\"stock_movement_id\": 9000004, \"sample_record\": true}', '2026-01-03 09:05:00'),
(9000052, 9000003, 'stock_posted', 'stock_movements', '9000005', NULL, '{\"stock_movement_id\": 9000005, \"sample_record\": true}', '2026-01-03 09:05:00'),
(9000053, 9000003, 'stock_posted', 'stock_movements', '9000006', NULL, '{\"stock_movement_id\": 9000006, \"sample_record\": true}', '2026-01-03 09:05:00'),
(9000054, 9000003, 'stock_posted', 'stock_movements', '9000007', NULL, '{\"stock_movement_id\": 9000007, \"sample_record\": true}', '2026-01-03 09:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `carrier_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `carrier_code` varchar(25) NOT NULL,
  `carrier_name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carriers`
--

INSERT INTO `carriers` (`carrier_id`, `status_id`, `carrier_code`, `carrier_name`) VALUES
(9000001, 1, 'INHOUSE', 'TBJ Delivery Team'),
(9000002, 1, 'COURIER1', 'Parcel Courier One'),
(9000003, 1, 'COURIER2', 'Parcel Courier Two');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `status_id`, `category_name`) VALUES
(9000001, 1, 'T-Shirts'),
(9000002, 1, 'Polo Shirts'),
(9000003, 1, 'Blouses'),
(9000004, 1, 'Trousers'),
(9000005, 1, 'Dresses'),
(9000006, 1, 'Outerwear');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `customer_code` varchar(30) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `email_address` varchar(150) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `status_id`, `customer_code`, `customer_name`, `email_address`, `phone_number`, `address`) VALUES
(9000001, 1, 'CUS-0001', 'Alex Customer', 'customer1@tbj.test', NULL, 'Delivery Address 1, Cagayan de Oro City, Philippines'),
(9000002, 1, 'CUS-0002', 'Bea Customer', 'customer2@tbj.test', NULL, 'Delivery Address 2, Cagayan de Oro City, Philippines'),
(9000003, 1, 'CUS-0003', 'Carlo Customer', 'customer3@tbj.test', NULL, 'Delivery Address 3, Cagayan de Oro City, Philippines'),
(9000004, 1, 'CUS-0004', 'Dana Customer', 'customer4@tbj.test', NULL, 'Delivery Address 4, Cagayan de Oro City, Philippines'),
(9000005, 1, 'CUS-0005', 'Eli Customer', 'customer5@tbj.test', NULL, 'Delivery Address 5, Cagayan de Oro City, Philippines'),
(9000006, 1, 'CUS-0006', 'Faith Customer', 'customer6@tbj.test', NULL, 'Delivery Address 6, Cagayan de Oro City, Philippines'),
(9000007, 1, 'CUS-0007', 'Gio Customer', 'customer7@tbj.test', NULL, 'Delivery Address 7, Cagayan de Oro City, Philippines'),
(9000008, 1, 'CUS-0008', 'Hana Customer', 'customer8@tbj.test', NULL, 'Delivery Address 8, Cagayan de Oro City, Philippines'),
(9000009, 1, 'CUS-0009', 'Ivan Customer', 'customer9@tbj.test', NULL, 'Delivery Address 9, Cagayan de Oro City, Philippines'),
(9000010, 1, 'CUS-0010', 'Jade Customer', 'customer10@tbj.test', NULL, 'Delivery Address 10, Cagayan de Oro City, Philippines'),
(9000011, 1, 'CUS-0011', 'Kai Customer', 'customer11@tbj.test', NULL, 'Delivery Address 11, Cagayan de Oro City, Philippines'),
(9000012, 1, 'CUS-0012', 'Lara Customer', 'customer12@tbj.test', NULL, 'Delivery Address 12, Cagayan de Oro City, Philippines'),
(9000013, 1, 'CUS-0013', 'Mika Customer', 'customer13@tbj.test', NULL, 'Delivery Address 13, Cagayan de Oro City, Philippines'),
(9000014, 1, 'CUS-0014', 'Noah Customer', 'customer14@tbj.test', NULL, 'Delivery Address 14, Cagayan de Oro City, Philippines'),
(9000015, 1, 'CUS-0015', 'Owen Customer', 'customer15@tbj.test', NULL, 'Delivery Address 15, Cagayan de Oro City, Philippines'),
(9000016, 1, 'CUS-0016', 'Pia Customer', 'customer16@tbj.test', NULL, 'Delivery Address 16, Cagayan de Oro City, Philippines'),
(9000017, 1, 'CUS-0017', 'Quinn Customer', 'customer17@tbj.test', NULL, 'Delivery Address 17, Cagayan de Oro City, Philippines'),
(9000018, 1, 'CUS-0018', 'Ria Customer', 'customer18@tbj.test', NULL, 'Delivery Address 18, Cagayan de Oro City, Philippines'),
(9000019, 1, 'CUS-0019', 'Sam Customer', 'customer19@tbj.test', NULL, 'Delivery Address 19, Cagayan de Oro City, Philippines'),
(9000020, 1, 'CUS-0020', 'Toni Customer', 'customer20@tbj.test', NULL, 'Delivery Address 20, Cagayan de Oro City, Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `delivery_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `sales_order_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'record creator',
  `delivery_number` varchar(40) NOT NULL,
  `qr_code_token_hash` char(64) NOT NULL,
  `date_expected` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`delivery_id`, `purchase_order_id`, `sales_order_id`, `user_id`, `delivery_number`, `qr_code_token_hash`, `date_expected`) VALUES
(9000001, 9000001, NULL, 9000003, 'IN-0001', '6ba8f1e825f4e8ddf8b3a28e5a6695d17a76e8244617b49f5eb6c175685fa10e', '2026-01-10 17:00:00'),
(9000002, 9000002, NULL, 9000003, 'IN-0002', 'def4234df2e11f86eab4b31f2cc7f1771acc631393826ef8130f848aca3b1037', '2026-01-11 17:00:00'),
(9000003, 9000003, NULL, 9000003, 'IN-0003', '6d19188aa3b8ecfebeddd612821564877a99b28e014b8d8ae1af054c16e2ffa6', '2026-01-12 17:00:00'),
(9000004, 9000004, NULL, 9000003, 'IN-0004', 'c477cf8323be15ecfb2e9bbddfcaa303e2d6306bfe4d8e890084b4f30d5dfe94', '2026-01-13 17:00:00'),
(9000005, 9000005, NULL, 9000003, 'IN-0005', '6e8255c33a387e81808b6fb7beb72350725cb42da5bffd06b4c7850e39b5d0a4', '2026-01-14 17:00:00'),
(9000006, 9000006, NULL, 9000003, 'IN-0006', '6b0a823cc4132f39918d45dfa1aee330108e69f077fff3641678ddfc3cb9a113', '2026-01-15 17:00:00'),
(9000007, 9000007, NULL, 9000003, 'IN-0007', 'aa73946a8fdc716e04545b33cc452e19ce920de959e00b9ddb4df1009bdfb3dc', '2026-01-16 17:00:00'),
(9000008, 9000008, NULL, 9000003, 'IN-0008', '92a4a6c23f62837309486f1669cf2a83b0ceb96c7dcf36c2e1b08ce237c9837b', '2026-01-17 17:00:00'),
(9000009, 9000009, NULL, 9000003, 'IN-0009', 'e0b85d2ed25c44979a81b5000faff789693d11a1f73722523cd757de94a41019', '2026-01-18 17:00:00'),
(9000010, 9000010, NULL, 9000003, 'IN-0010', '8d8467ef53f4b03bc8c8d49d2942edc449efc219538ff4fc1ae4589b79834081', '2026-01-19 17:00:00'),
(9000011, NULL, 9000001, 9000003, 'OUT-0011', 'b77a621da32d23c4c7f65ad04a6d22d0a2ceef010522260179d48bdfcf7d1728', '2026-02-08 17:00:00'),
(9000012, NULL, 9000002, 9000003, 'OUT-0012', 'c943205bfeab7973da57d31f0a8ba27cf8dafad4056b37aaaf0fc38996464795', '2026-02-15 17:00:00'),
(9000013, NULL, 9000003, 9000003, 'OUT-0013', '445e518683e02519b539ea03b5b2d818d7248390964106a1bb6fa78ce19cab89', '2026-02-22 17:00:00'),
(9000014, NULL, 9000004, 9000003, 'OUT-0014', '52c36daddbab07cff78bc8ec7755cccede6a690cc6ded5894593ba40bb3bc70f', '2026-03-08 17:00:00'),
(9000015, NULL, 9000005, 9000003, 'OUT-0015', '6c6948f0801025cb95f1f162223c6af19fc57ae704c0a7f410f135a1c5e05df2', '2026-03-15 17:00:00'),
(9000016, NULL, 9000006, 9000003, 'OUT-0016', 'cbc46def2c2f1e10a21617e1927c7237372fb4f5ab424a01b020e5aa1512872a', '2026-03-22 17:00:00'),
(9000017, NULL, 9000007, 9000003, 'OUT-0017', '3f243fab16853f86d56a026666846890c82b9bcc23b0597987832bd93b8a46eb', '2026-04-08 17:00:00'),
(9000018, NULL, 9000008, 9000003, 'OUT-0018', 'e8d19506648b9ed4c7064994d2b880bc703d36150e4562f1ed79b4b4e829361f', '2026-04-15 17:00:00'),
(9000019, NULL, 9000009, 9000003, 'OUT-0019', 'b96aa7e1a43c6c48925f8b3b3e03e0a5e2cd0caf3d00ee307fa7c56ace28f93a', '2026-04-22 17:00:00'),
(9000020, NULL, 9000010, 9000003, 'OUT-0020', '16550a763841cb1775afac5b668a16551d3c547a0301ca8989a68ebfc12bc3c4', '2026-05-08 17:00:00'),
(9000021, NULL, 9000011, 9000003, 'OUT-0021', 'c32f1866a4c8407fbeb78cf217ff51fc5e49b772ce06126367e3057036b6c57b', '2026-05-15 17:00:00'),
(9000022, NULL, 9000012, 9000003, 'OUT-0022', '7eaeb8250a82a27a628f2f6077c82f7a51e65d28b85679178a16478156680170', '2026-05-22 17:00:00'),
(9000023, NULL, 9000013, 9000003, 'OUT-0023', '008b7e0892f145c2bb81381907251afb92f5933ff4827f792ad1551a012550cc', '2026-06-08 17:00:00'),
(9000024, NULL, 9000014, 9000003, 'OUT-0024', '4a4435c5c9584bdacd4f38971ada4459544c56a5cef39467ed04509e2eb2aa46', '2026-06-15 17:00:00'),
(9000025, NULL, 9000015, 9000003, 'OUT-0025', '88c4ff3f3a2ff31a61c4b47436c0b47870b3472b1565050821c32086fdd2ce54', '2026-06-22 17:00:00'),
(9000026, NULL, 9000016, 9000003, 'OUT-0026', 'efa80d016c6d8a83843e9744077bea0d5cf86f358ae1be7f35afc20a9e4e1f1d', '2026-07-08 17:00:00'),
(9000027, NULL, 9000017, 9000003, 'OUT-0027', '4d77a4091128371a7c528b230db77a82f5ef14515d0e452759aa93e052e53cd1', '2026-07-15 17:00:00'),
(9000028, NULL, 9000018, 9000003, 'OUT-0028', 'ed94dc32189ee08b8f23595a64d8610ac452a7c874e765c8957521784892a5e6', '2026-07-22 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_items`
--

CREATE TABLE `delivery_items` (
  `delivery_item_id` bigint(20) NOT NULL,
  `delivery_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) DEFAULT NULL,
  `purchase_order_item_id` bigint(20) DEFAULT NULL,
  `sales_order_id` bigint(20) DEFAULT NULL,
  `sales_order_item_id` bigint(20) DEFAULT NULL,
  `quantity_shipped` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_items`
--

INSERT INTO `delivery_items` (`delivery_item_id`, `delivery_id`, `purchase_order_id`, `purchase_order_item_id`, `sales_order_id`, `sales_order_item_id`, `quantity_shipped`) VALUES
(9000001, 9000001, 9000001, 9000001, NULL, NULL, 25),
(9000002, 9000001, 9000001, 9000002, NULL, NULL, 25),
(9000003, 9000002, 9000002, 9000003, NULL, NULL, 20),
(9000004, 9000002, 9000002, 9000004, NULL, NULL, 20),
(9000005, 9000003, 9000003, 9000005, NULL, NULL, 25),
(9000006, 9000003, 9000003, 9000006, NULL, NULL, 25),
(9000007, 9000004, 9000004, 9000007, NULL, NULL, 20),
(9000008, 9000004, 9000004, 9000008, NULL, NULL, 20),
(9000009, 9000005, 9000005, 9000009, NULL, NULL, 25),
(9000010, 9000005, 9000005, 9000010, NULL, NULL, 25),
(9000011, 9000006, 9000006, 9000011, NULL, NULL, 20),
(9000012, 9000006, 9000006, 9000012, NULL, NULL, 20),
(9000013, 9000007, 9000007, 9000013, NULL, NULL, 25),
(9000014, 9000007, 9000007, 9000014, NULL, NULL, 25),
(9000015, 9000008, 9000008, 9000015, NULL, NULL, 20),
(9000016, 9000008, 9000008, 9000016, NULL, NULL, 20),
(9000017, 9000009, 9000009, 9000017, NULL, NULL, 25),
(9000018, 9000009, 9000009, 9000018, NULL, NULL, 25),
(9000019, 9000010, 9000010, 9000019, NULL, NULL, 20),
(9000020, 9000010, 9000010, 9000020, NULL, NULL, 20),
(9000021, 9000011, NULL, NULL, 9000001, 9000001, 3),
(9000022, 9000011, NULL, NULL, 9000001, 9000002, 4),
(9000023, 9000012, NULL, NULL, 9000002, 9000003, 4),
(9000024, 9000012, NULL, NULL, 9000002, 9000004, 1),
(9000025, 9000013, NULL, NULL, 9000003, 9000005, 1),
(9000026, 9000013, NULL, NULL, 9000003, 9000006, 2),
(9000027, 9000014, NULL, NULL, 9000004, 9000007, 2),
(9000028, 9000014, NULL, NULL, 9000004, 9000008, 3),
(9000029, 9000015, NULL, NULL, 9000005, 9000009, 3),
(9000030, 9000015, NULL, NULL, 9000005, 9000010, 4),
(9000031, 9000016, NULL, NULL, 9000006, 9000011, 4),
(9000032, 9000016, NULL, NULL, 9000006, 9000012, 1),
(9000033, 9000017, NULL, NULL, 9000007, 9000013, 1),
(9000034, 9000017, NULL, NULL, 9000007, 9000014, 2),
(9000035, 9000018, NULL, NULL, 9000008, 9000015, 2),
(9000036, 9000018, NULL, NULL, 9000008, 9000016, 3),
(9000037, 9000019, NULL, NULL, 9000009, 9000017, 3),
(9000038, 9000019, NULL, NULL, 9000009, 9000018, 4),
(9000039, 9000020, NULL, NULL, 9000010, 9000019, 4),
(9000040, 9000020, NULL, NULL, 9000010, 9000020, 1),
(9000041, 9000021, NULL, NULL, 9000011, 9000021, 1),
(9000042, 9000021, NULL, NULL, 9000011, 9000022, 2),
(9000043, 9000022, NULL, NULL, 9000012, 9000023, 2),
(9000044, 9000022, NULL, NULL, 9000012, 9000024, 3),
(9000045, 9000023, NULL, NULL, 9000013, 9000025, 3),
(9000046, 9000023, NULL, NULL, 9000013, 9000026, 4),
(9000047, 9000024, NULL, NULL, 9000014, 9000027, 4),
(9000048, 9000024, NULL, NULL, 9000014, 9000028, 1),
(9000049, 9000025, NULL, NULL, 9000015, 9000029, 1),
(9000050, 9000025, NULL, NULL, 9000015, 9000030, 2),
(9000051, 9000026, NULL, NULL, 9000016, 9000031, 2),
(9000052, 9000026, NULL, NULL, 9000016, 9000032, 3),
(9000053, 9000027, NULL, NULL, 9000017, 9000033, 3),
(9000054, 9000027, NULL, NULL, 9000017, 9000034, 4),
(9000055, 9000028, NULL, NULL, 9000018, 9000035, 4),
(9000056, 9000028, NULL, NULL, 9000018, 9000036, 1);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_statuses`
--

CREATE TABLE `delivery_statuses` (
  `delivery_status_id` bigint(20) NOT NULL,
  `status_code` varchar(30) NOT NULL,
  `status_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_statuses`
--

INSERT INTO `delivery_statuses` (`delivery_status_id`, `status_code`, `status_name`) VALUES
(1, 'pending', 'Pending'),
(2, 'scheduled', 'Scheduled'),
(3, 'dispatched', 'Dispatched'),
(4, 'in_transit', 'In Transit'),
(5, 'out_for_delivery', 'Out For Delivery'),
(6, 'delayed', 'Delayed'),
(7, 'delivered', 'Delivered'),
(8, 'cancelled', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_tracking`
--

CREATE TABLE `delivery_tracking` (
  `delivery_tracking_id` bigint(20) NOT NULL,
  `delivery_id` bigint(20) NOT NULL,
  `carrier_id` bigint(20) NOT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `date_created` date NOT NULL COMMENT 'Creation calendar date only; no time of day is stored.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_tracking`
--

INSERT INTO `delivery_tracking` (`delivery_tracking_id`, `delivery_id`, `carrier_id`, `tracking_number`, `date_created`) VALUES
(9000001, 9000001, 9000002, 'TRACK-0001', '2026-01-08'),
(9000002, 9000002, 9000003, 'TRACK-0002', '2026-01-09'),
(9000003, 9000003, 9000001, 'TRACK-0003', '2026-01-10'),
(9000004, 9000004, 9000002, 'TRACK-0004', '2026-01-11'),
(9000005, 9000005, 9000003, 'TRACK-0005', '2026-01-12'),
(9000006, 9000006, 9000001, 'TRACK-0006', '2026-01-13'),
(9000007, 9000007, 9000002, 'TRACK-0007', '2026-01-14'),
(9000008, 9000008, 9000003, 'TRACK-0008', '2026-01-15'),
(9000009, 9000009, 9000001, 'TRACK-0009', '2026-01-16'),
(9000010, 9000010, 9000002, 'TRACK-0010', '2026-01-17'),
(9000011, 9000011, 9000003, 'TRACK-0011', '2026-02-06'),
(9000012, 9000012, 9000001, 'TRACK-0012', '2026-02-13'),
(9000013, 9000013, 9000002, 'TRACK-0013', '2026-02-20'),
(9000014, 9000014, 9000003, 'TRACK-0014', '2026-03-06'),
(9000015, 9000015, 9000001, 'TRACK-0015', '2026-03-13'),
(9000016, 9000016, 9000002, 'TRACK-0016', '2026-03-20'),
(9000017, 9000017, 9000003, 'TRACK-0017', '2026-04-06'),
(9000018, 9000018, 9000001, 'TRACK-0018', '2026-04-13'),
(9000019, 9000019, 9000002, 'TRACK-0019', '2026-04-20'),
(9000020, 9000020, 9000003, 'TRACK-0020', '2026-05-06'),
(9000021, 9000021, 9000001, 'TRACK-0021', '2026-05-13'),
(9000022, 9000022, 9000002, 'TRACK-0022', '2026-05-20'),
(9000023, 9000023, 9000003, 'TRACK-0023', '2026-06-06'),
(9000024, 9000024, 9000001, 'TRACK-0024', '2026-06-13'),
(9000025, 9000025, 9000002, 'TRACK-0025', '2026-06-20'),
(9000026, 9000026, 9000003, 'TRACK-0026', '2026-07-06'),
(9000027, 9000027, 9000001, 'TRACK-0027', '2026-07-13'),
(9000028, 9000028, 9000002, 'TRACK-0028', '2026-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `demand_forecasts`
--

CREATE TABLE `demand_forecasts` (
  `demand_forecast_id` bigint(20) NOT NULL,
  `forecast_run_id` bigint(20) NOT NULL,
  `product_variant_id` bigint(20) NOT NULL,
  `date_period_start` date NOT NULL,
  `date_period_end` date NOT NULL,
  `predicted_quantity` int(11) NOT NULL,
  `lower_prediction_bound` int(11) DEFAULT NULL,
  `upper_prediction_bound` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `demand_forecasts`
--

INSERT INTO `demand_forecasts` (`demand_forecast_id`, `forecast_run_id`, `product_variant_id`, `date_period_start`, `date_period_end`, `predicted_quantity`, `lower_prediction_bound`, `upper_prediction_bound`) VALUES
(9000001, 9000001, 9000001, '2026-10-01', '2026-10-31', 1, NULL, NULL),
(9000002, 9000001, 9000002, '2026-10-01', '2026-10-31', 2, NULL, NULL),
(9000003, 9000001, 9000003, '2026-10-01', '2026-10-31', 2, NULL, NULL),
(9000004, 9000001, 9000004, '2026-10-01', '2026-10-31', 1, NULL, NULL),
(9000005, 9000001, 9000005, '2026-10-01', '2026-10-31', 1, NULL, NULL),
(9000006, 9000001, 9000006, '2026-10-01', '2026-10-31', 1, NULL, NULL),
(9000007, 9000001, 9000007, '2026-10-01', '2026-10-31', 1, NULL, NULL),
(9000008, 9000001, 9000008, '2026-10-01', '2026-10-31', 1, NULL, NULL),
(9000009, 9000001, 9000009, '2026-10-01', '2026-10-31', 1, NULL, NULL),
(9000010, 9000001, 9000010, '2026-10-01', '2026-10-31', 2, NULL, NULL),
(9000011, 9000001, 9000011, '2026-10-01', '2026-10-31', 2, NULL, NULL),
(9000012, 9000001, 9000012, '2026-10-01', '2026-10-31', 1, NULL, NULL),
(9000013, 9000001, 9000013, '2026-10-01', '2026-10-31', 0, NULL, NULL),
(9000014, 9000001, 9000014, '2026-10-01', '2026-10-31', 0, NULL, NULL),
(9000015, 9000001, 9000015, '2026-10-01', '2026-10-31', 0, NULL, NULL),
(9000016, 9000001, 9000016, '2026-10-01', '2026-10-31', 0, NULL, NULL),
(9000017, 9000001, 9000017, '2026-10-01', '2026-10-31', 0, NULL, NULL),
(9000018, 9000001, 9000018, '2026-10-01', '2026-10-31', 0, NULL, NULL),
(9000019, 9000001, 9000019, '2026-10-01', '2026-10-31', 0, NULL, NULL),
(9000020, 9000001, 9000020, '2026-10-01', '2026-10-31', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` bigint(20) NOT NULL,
  `discount_type_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'record creator',
  `discount_code` varchar(40) NOT NULL,
  `discount_name` varchar(100) NOT NULL,
  `discount_calculation_type` enum('percent','fixed') NOT NULL,
  `discount_value` decimal(14,2) NOT NULL,
  `minimum_order_amount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `date_effective_start` datetime NOT NULL,
  `date_effective_end` datetime DEFAULT NULL,
  `date_created` date NOT NULL COMMENT 'Creation calendar date only; no time of day is stored.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`discount_id`, `discount_type_id`, `status_id`, `user_id`, `discount_code`, `discount_name`, `discount_calculation_type`, `discount_value`, `minimum_order_amount`, `date_effective_start`, `date_effective_end`, `date_created`) VALUES
(9000001, 1, 1, 9000001, 'DISC-0001', 'Holiday Special', 'percent', 10.00, 100.00, '2026-12-01 00:00:00', '2027-01-01 00:00:00', '2026-01-01'),
(9000002, 2, 1, 9000001, 'DISC-0002', 'Verified Family Discount', 'percent', 10.00, 100.00, '2026-01-01 00:00:00', NULL, '2026-01-01'),
(9000003, 3, 1, 9000001, 'DISC-0003', 'Regular Customer Promotion', 'percent', 5.00, 100.00, '2026-01-01 00:00:00', NULL, '2026-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `discount_types`
--

CREATE TABLE `discount_types` (
  `discount_type_id` bigint(20) NOT NULL,
  `discount_type_code` varchar(25) NOT NULL,
  `discount_type_name` varchar(60) NOT NULL,
  `eligibility_requirement` enum('public','verified') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_types`
--

INSERT INTO `discount_types` (`discount_type_id`, `discount_type_code`, `discount_type_name`, `eligibility_requirement`) VALUES
(1, 'HOLIDAY', 'Holiday Special', 'public'),
(2, 'FAMILY', 'Family Discount', 'verified'),
(3, 'REGULAR', 'Regular Promotion', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `forecast_inputs`
--

CREATE TABLE `forecast_inputs` (
  `forecast_run_id` bigint(20) NOT NULL,
  `product_variant_id` bigint(20) NOT NULL,
  `validation_mean_absolute_error` decimal(14,3) DEFAULT NULL,
  `historical_demand_series` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`historical_demand_series`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forecast_inputs`
--

INSERT INTO `forecast_inputs` (`forecast_run_id`, `product_variant_id`, `validation_mean_absolute_error`, `historical_demand_series`) VALUES
(9000001, 9000001, 1.000, '[{\"period\":\"2026-02\",\"quantity\":3},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":3},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000002, 1.333, '[{\"period\":\"2026-02\",\"quantity\":4},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":4},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000003, 1.333, '[{\"period\":\"2026-02\",\"quantity\":4},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":4},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000004, 0.333, '[{\"period\":\"2026-02\",\"quantity\":1},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":1},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000005, 0.667, '[{\"period\":\"2026-02\",\"quantity\":1},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":1},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000006, 1.333, '[{\"period\":\"2026-02\",\"quantity\":2},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":2},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000007, 1.333, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":2},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":2},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000008, 2.000, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":3},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":3},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000009, 2.000, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":3},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":3},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000010, 2.667, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":4},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":4},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000011, 2.000, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":4},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":4}]'),
(9000001, 9000012, 0.500, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":1},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":1}]'),
(9000001, 9000013, 0.000, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":1},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000014, 0.000, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":2},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000015, 0.000, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":2},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000016, 0.000, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":3},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000017, 0.000, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":3},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000018, 0.000, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":4},{\"period\":\"2026-05\",\"quantity\":0},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000019, 0.667, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":4},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]'),
(9000001, 9000020, 0.167, '[{\"period\":\"2026-02\",\"quantity\":0},{\"period\":\"2026-03\",\"quantity\":0},{\"period\":\"2026-04\",\"quantity\":0},{\"period\":\"2026-05\",\"quantity\":1},{\"period\":\"2026-06\",\"quantity\":0},{\"period\":\"2026-07\",\"quantity\":0},{\"period\":\"2026-08\",\"quantity\":0},{\"period\":\"2026-09\",\"quantity\":0}]');

-- --------------------------------------------------------

--
-- Table structure for table `forecast_runs`
--

CREATE TABLE `forecast_runs` (
  `forecast_run_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'forecast initiator; NULL for a scheduled job',
  `forecast_method` enum('moving_average','exponential_smoothing') NOT NULL,
  `model_version` varchar(40) NOT NULL,
  `model_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`model_parameters`)),
  `date_training_start` date NOT NULL,
  `date_training_end` date NOT NULL,
  `date_source_cutoff` datetime NOT NULL,
  `date_generated` datetime NOT NULL,
  `forecast_status_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forecast_runs`
--

INSERT INTO `forecast_runs` (`forecast_run_id`, `user_id`, `forecast_method`, `model_version`, `model_parameters`, `date_training_start`, `date_training_end`, `date_source_cutoff`, `date_generated`, `forecast_status_id`) VALUES
(9000001, 9000003, 'moving_average', 'ma-3month-v1', '{\"window_periods\": 3, \"period\": \"month\", \"rounding\": \"ceiling\", \"example_data\": true}', '2026-02-01', '2026-09-30', '2026-10-20 11:00:00', '2026-10-20 11:05:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `forecast_statuses`
--

CREATE TABLE `forecast_statuses` (
  `forecast_status_id` bigint(20) NOT NULL,
  `status_code` varchar(30) NOT NULL,
  `status_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forecast_statuses`
--

INSERT INTO `forecast_statuses` (`forecast_status_id`, `status_code`, `status_name`) VALUES
(1, 'running', 'Running'),
(2, 'completed', 'Completed'),
(3, 'failed', 'Failed');

-- --------------------------------------------------------

--
-- Table structure for table `goods_receipts`
--

CREATE TABLE `goods_receipts` (
  `goods_receipt_id` bigint(20) NOT NULL,
  `delivery_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'receiving staff member',
  `receipt_number` varchar(40) NOT NULL,
  `date_received` datetime NOT NULL,
  `receipt_status_id` bigint(20) NOT NULL,
  `notes` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goods_receipts`
--

INSERT INTO `goods_receipts` (`goods_receipt_id`, `delivery_id`, `purchase_order_id`, `user_id`, `receipt_number`, `date_received`, `receipt_status_id`, `notes`) VALUES
(9000001, 9000001, 9000001, 9000007, 'GR-0001', '2026-01-10 15:15:00', 2, 'Synthetic inspection and receiving example'),
(9000002, 9000002, 9000002, 9000008, 'GR-0002', '2026-01-11 15:15:00', 2, 'Synthetic inspection and receiving example'),
(9000003, 9000003, 9000003, 9000009, 'GR-0003', '2026-01-12 15:15:00', 2, 'Synthetic inspection and receiving example'),
(9000004, 9000004, 9000004, 9000006, 'GR-0004', '2026-01-13 15:15:00', 2, 'Synthetic inspection and receiving example'),
(9000005, 9000005, 9000005, 9000007, 'GR-0005', '2026-01-14 15:15:00', 2, 'Synthetic inspection and receiving example'),
(9000006, 9000006, 9000006, 9000008, 'GR-0006', '2026-01-15 15:15:00', 2, 'Synthetic inspection and receiving example'),
(9000007, 9000007, 9000007, 9000009, 'GR-0007', '2026-01-16 15:15:00', 2, 'Synthetic inspection and receiving example'),
(9000008, 9000008, 9000008, 9000006, 'GR-0008', '2026-01-17 15:15:00', 2, 'Synthetic inspection and receiving example');

-- --------------------------------------------------------

--
-- Table structure for table `goods_receipt_items`
--

CREATE TABLE `goods_receipt_items` (
  `goods_receipt_item_id` bigint(20) NOT NULL,
  `goods_receipt_id` bigint(20) NOT NULL,
  `delivery_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `delivery_item_id` bigint(20) NOT NULL,
  `purchase_order_item_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goods_receipt_items`
--

INSERT INTO `goods_receipt_items` (`goods_receipt_item_id`, `goods_receipt_id`, `delivery_id`, `purchase_order_id`, `delivery_item_id`, `purchase_order_item_id`) VALUES
(9000001, 9000001, 9000001, 9000001, 9000001, 9000001),
(9000002, 9000001, 9000001, 9000001, 9000002, 9000002),
(9000003, 9000002, 9000002, 9000002, 9000003, 9000003),
(9000004, 9000002, 9000002, 9000002, 9000004, 9000004),
(9000005, 9000003, 9000003, 9000003, 9000005, 9000005),
(9000006, 9000003, 9000003, 9000003, 9000006, 9000006),
(9000007, 9000004, 9000004, 9000004, 9000007, 9000007),
(9000008, 9000004, 9000004, 9000004, 9000008, 9000008),
(9000009, 9000005, 9000005, 9000005, 9000009, 9000009),
(9000010, 9000005, 9000005, 9000005, 9000010, 9000010),
(9000011, 9000006, 9000006, 9000006, 9000011, 9000011),
(9000012, 9000006, 9000006, 9000006, 9000012, 9000012),
(9000013, 9000007, 9000007, 9000007, 9000013, 9000013),
(9000014, 9000007, 9000007, 9000007, 9000014, 9000014),
(9000015, 9000008, 9000008, 9000008, 9000015, 9000015),
(9000016, 9000008, 9000008, 9000008, 9000016, 9000016);

-- --------------------------------------------------------

--
-- Table structure for table `inspection_attachments`
--

CREATE TABLE `inspection_attachments` (
  `inspection_attachment_id` bigint(20) NOT NULL,
  `goods_receipt_item_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'evidence uploader',
  `file_path` varchar(500) NOT NULL,
  `attachment_description` varchar(255) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inspection_attachments`
--

INSERT INTO `inspection_attachments` (`inspection_attachment_id`, `goods_receipt_item_id`, `user_id`, `file_path`, `attachment_description`, `date_uploaded`) VALUES
(9000001, 9000004, 9000006, 'inspection/INSPECT-0004.jpg', 'Placeholder path for synthetic inspection evidence', '2026-01-11 15:30:00'),
(9000002, 9000008, 9000006, 'inspection/INSPECT-0008.jpg', 'Placeholder path for synthetic inspection evidence', '2026-01-13 15:30:00'),
(9000003, 9000012, 9000006, 'inspection/INSPECT-0012.jpg', 'Placeholder path for synthetic inspection evidence', '2026-01-15 15:30:00'),
(9000004, 9000016, 9000006, 'inspection/INSPECT-0016.jpg', 'Placeholder path for synthetic inspection evidence', '2026-01-17 15:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_receipt_allocations`
--

CREATE TABLE `invoice_receipt_allocations` (
  `invoice_receipt_allocation_id` bigint(20) NOT NULL,
  `supplier_invoice_item_id` bigint(20) NOT NULL,
  `goods_receipt_item_id` bigint(20) NOT NULL,
  `purchase_order_item_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'reviewer',
  `quantity_allocated` int(11) NOT NULL,
  `date_reviewed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_receipt_allocations`
--

INSERT INTO `invoice_receipt_allocations` (`invoice_receipt_allocation_id`, `supplier_invoice_item_id`, `goods_receipt_item_id`, `purchase_order_item_id`, `user_id`, `quantity_allocated`, `date_reviewed`) VALUES
(9000001, 9000001, 9000001, 9000001, 9000004, 25, '2026-01-11 11:00:00'),
(9000002, 9000002, 9000002, 9000002, 9000004, 25, '2026-01-11 11:00:00'),
(9000003, 9000003, 9000003, 9000003, 9000004, 20, '2026-01-12 11:00:00'),
(9000004, 9000004, 9000004, 9000004, 9000004, 20, '2026-01-12 11:00:00'),
(9000005, 9000005, 9000005, 9000005, 9000004, 25, '2026-01-13 11:00:00'),
(9000006, 9000006, 9000006, 9000006, 9000004, 25, '2026-01-13 11:00:00'),
(9000007, 9000007, 9000007, 9000007, 9000004, 20, '2026-01-14 11:00:00'),
(9000008, 9000008, 9000008, 9000008, 9000004, 18, '2026-01-14 11:00:00'),
(9000009, 9000009, 9000009, 9000009, 9000004, 25, '2026-01-15 11:00:00'),
(9000010, 9000010, 9000010, 9000010, 9000004, 25, '2026-01-15 11:00:00'),
(9000011, 9000011, 9000011, 9000011, 9000004, 20, '2026-01-16 11:00:00'),
(9000012, 9000012, 9000012, 9000012, 9000004, 20, '2026-01-16 11:00:00'),
(9000013, 9000013, 9000013, 9000013, 9000004, 25, '2026-01-17 11:00:00'),
(9000014, 9000014, 9000014, 9000014, 9000004, 25, '2026-01-17 11:00:00'),
(9000015, 9000015, 9000015, 9000015, 9000004, 20, '2026-01-18 11:00:00'),
(9000016, 9000016, 9000016, 9000016, 9000004, 20, '2026-01-18 11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_statuses`
--

CREATE TABLE `invoice_statuses` (
  `invoice_status_id` bigint(20) NOT NULL,
  `status_code` varchar(30) NOT NULL,
  `status_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_statuses`
--

INSERT INTO `invoice_statuses` (`invoice_status_id`, `status_code`, `status_name`) VALUES
(1, 'received', 'Received'),
(2, 'verified', 'Verified'),
(3, 'disputed', 'Disputed'),
(4, 'void', 'Void');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `order_status_id` bigint(20) NOT NULL,
  `status_code` varchar(30) NOT NULL,
  `status_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`order_status_id`, `status_code`, `status_name`) VALUES
(1, 'draft', 'Draft'),
(2, 'pending', 'Pending'),
(3, 'confirmed', 'Confirmed'),
(4, 'for_delivery', 'For Delivery'),
(5, 'partially_delivered', 'Partially Delivered'),
(6, 'completed', 'Completed'),
(7, 'cancelled', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'recording staff member',
  `original_payment_id` bigint(20) DEFAULT NULL,
  `payment_number` varchar(40) NOT NULL,
  `payment_type` enum('payment','refund') NOT NULL,
  `payment_amount` decimal(14,2) NOT NULL,
  `transaction_reference` varchar(100) DEFAULT NULL,
  `date_paid` datetime NOT NULL,
  `transaction_request_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `purchase_order_id`, `payment_method_id`, `user_id`, `original_payment_id`, `payment_number`, `payment_type`, `payment_amount`, `transaction_reference`, `date_paid`, `transaction_request_key`) VALUES
(9000001, 9000001, 2, 9000001, NULL, 'SUPPAY-0001', 'payment', 13284.32, 'BANK-0001', '2026-01-12 13:00:00', 'SUPPAY-REQ-0001'),
(9000002, 9000002, 2, 9000001, NULL, 'SUPPAY-0002', 'payment', 13225.86, 'BANK-0002', '2026-01-13 13:00:00', 'SUPPAY-REQ-0002'),
(9000003, 9000003, 2, 9000001, NULL, 'SUPPAY-0003', 'payment', 17661.00, 'BANK-0003', '2026-01-14 13:00:00', 'SUPPAY-REQ-0003'),
(9000004, 9000004, 2, 9000001, NULL, 'SUPPAY-0004', 'payment', 17488.53, 'BANK-0004', '2026-01-15 13:00:00', 'SUPPAY-REQ-0004'),
(9000005, 9000005, 2, 9000001, NULL, 'SUPPAY-0005', 'payment', 26276.32, 'BANK-0005', '2026-01-16 13:00:00', 'SUPPAY-REQ-0005'),
(9000006, 9000006, 2, 9000001, NULL, 'SUPPAY-0006', 'payment', 7168.80, 'BANK-0006', '2026-01-17 13:00:00', 'SUPPAY-REQ-0006'),
(9000007, 9000007, 2, 9000001, NULL, 'SUPPAY-0007', 'payment', 13284.32, 'BANK-0007', '2026-01-18 13:00:00', 'SUPPAY-REQ-0007'),
(9000008, 9000008, 2, 9000001, NULL, 'SUPPAY-0008', 'payment', 13225.86, 'BANK-0008', '2026-01-19 13:00:00', 'SUPPAY-REQ-0008'),
(9000009, 9000009, 2, 9000001, NULL, 'SUPPAY-0009', 'payment', 7947.45, 'BANK-0009', '2026-01-20 13:00:00', 'SUPPAY-REQ-0009'),
(9000010, 9000010, 2, 9000001, NULL, 'SUPPAY-0010', 'payment', 11514.16, 'BANK-0010', '2026-01-21 13:00:00', 'SUPPAY-REQ-0010');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_method_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `payment_method_code` varchar(25) NOT NULL,
  `payment_method_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_method_id`, `status_id`, `payment_method_code`, `payment_method_name`) VALUES
(1, 1, 'CASH', 'Cash'),
(2, 1, 'BANK_TRANSFER', 'Bank Transfer'),
(3, 1, 'CHEQUE', 'Cheque'),
(4, 1, 'EWALLET', 'E-wallet');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL DEFAULT 1,
  `item_code` varchar(40) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `style_code` varchar(40) DEFAULT NULL,
  `item_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `status_id`, `item_code`, `product_name`, `style_code`, `item_type`) VALUES
(9000001, 9000001, 1, 'ITEM-0001', 'Classic Crew Neck', 'STYLE-0001', 'T-shirt'),
(9000002, 9000001, 1, 'ITEM-0002', 'Relaxed Fit Tee', 'STYLE-0002', 'T-shirt'),
(9000003, 9000001, 1, 'ITEM-0003', 'V Neck Essential', 'STYLE-0003', 'T-shirt'),
(9000004, 9000002, 1, 'ITEM-0004', 'Everyday Polo', 'STYLE-0004', 'Polo shirt'),
(9000005, 9000002, 1, 'ITEM-0005', 'Pique Office Polo', 'STYLE-0005', 'Polo shirt'),
(9000006, 9000002, 1, 'ITEM-0006', 'Performance Polo', 'STYLE-0006', 'Polo shirt'),
(9000007, 9000003, 1, 'ITEM-0007', 'Pleated Office Blouse', 'STYLE-0007', 'Blouse'),
(9000008, 9000003, 1, 'ITEM-0008', 'Casual Linen Blouse', 'STYLE-0008', 'Blouse'),
(9000009, 9000004, 1, 'ITEM-0009', 'Straight Fit Chino', 'STYLE-0009', 'Trousers'),
(9000010, 9000004, 1, 'ITEM-0010', 'Tapered Office Trousers', 'STYLE-0010', 'Trousers'),
(9000011, 9000004, 1, 'ITEM-0011', 'Relaxed Denim Jeans', 'STYLE-0011', 'Jeans'),
(9000012, 9000005, 1, 'ITEM-0012', 'Everyday Midi Dress', 'STYLE-0012', 'Dress'),
(9000013, 9000005, 1, 'ITEM-0013', 'Casual Shift Dress', 'STYLE-0013', 'Dress'),
(9000014, 9000006, 1, 'ITEM-0014', 'Zip Front Jacket', 'STYLE-0014', 'Jacket'),
(9000015, 9000006, 1, 'ITEM-0015', 'Lightweight Cardigan', 'STYLE-0015', 'Cardigan'),
(9000016, 9000006, 1, 'ITEM-0016', 'Pullover Hoodie', 'STYLE-0016', 'Hoodie');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `product_variant_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL DEFAULT 1,
  `stock_keeping_unit` varchar(60) NOT NULL,
  `size_code` varchar(30) NOT NULL,
  `color_code` varchar(40) NOT NULL,
  `selling_price` decimal(14,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`product_variant_id`, `product_id`, `status_id`, `stock_keeping_unit`, `size_code`, `color_code`, `selling_price`) VALUES
(9000001, 9000001, 1, 'SKU-0001', 'M', 'NAVY', 399.00),
(9000002, 9000001, 1, 'SKU-0002', 'L', 'BLACK', 419.00),
(9000003, 9000002, 1, 'SKU-0003', 'M', 'NAVY', 499.00),
(9000004, 9000002, 1, 'SKU-0004', 'L', 'BLACK', 519.00),
(9000005, 9000003, 1, 'SKU-0005', 'M', 'NAVY', 599.00),
(9000006, 9000003, 1, 'SKU-0006', 'L', 'BLACK', 619.00),
(9000007, 9000004, 1, 'SKU-0007', 'M', 'NAVY', 699.00),
(9000008, 9000004, 1, 'SKU-0008', 'L', 'BLACK', 719.00),
(9000009, 9000005, 1, 'SKU-0009', 'M', 'NAVY', 799.00),
(9000010, 9000005, 1, 'SKU-0010', 'L', 'BLACK', 819.00),
(9000011, 9000006, 1, 'SKU-0011', 'M', 'NAVY', 299.00),
(9000012, 9000006, 1, 'SKU-0012', 'L', 'BLACK', 319.00),
(9000013, 9000007, 1, 'SKU-0013', 'M', 'NAVY', 399.00),
(9000014, 9000007, 1, 'SKU-0014', 'L', 'BLACK', 419.00),
(9000015, 9000008, 1, 'SKU-0015', 'M', 'NAVY', 499.00),
(9000016, 9000008, 1, 'SKU-0016', 'L', 'BLACK', 519.00),
(9000017, 9000009, 1, 'SKU-0017', 'M', 'NAVY', 599.00),
(9000018, 9000009, 1, 'SKU-0018', 'L', 'BLACK', 619.00),
(9000019, 9000010, 1, 'SKU-0019', 'M', 'NAVY', 699.00),
(9000020, 9000010, 1, 'SKU-0020', 'L', 'BLACK', 719.00),
(9000021, 9000011, 1, 'SKU-0021', 'M', 'NAVY', 799.00),
(9000022, 9000011, 1, 'SKU-0022', 'L', 'BLACK', 819.00),
(9000023, 9000012, 1, 'SKU-0023', 'M', 'NAVY', 299.00),
(9000024, 9000012, 1, 'SKU-0024', 'L', 'BLACK', 319.00),
(9000025, 9000013, 1, 'SKU-0025', 'M', 'NAVY', 399.00),
(9000026, 9000013, 1, 'SKU-0026', 'L', 'BLACK', 419.00),
(9000027, 9000014, 1, 'SKU-0027', 'M', 'NAVY', 499.00),
(9000028, 9000014, 1, 'SKU-0028', 'L', 'BLACK', 519.00),
(9000029, 9000015, 1, 'SKU-0029', 'M', 'NAVY', 599.00),
(9000030, 9000015, 1, 'SKU-0030', 'L', 'BLACK', 619.00),
(9000031, 9000016, 1, 'SKU-0031', 'M', 'NAVY', 699.00),
(9000032, 9000016, 1, 'SKU-0032', 'L', 'BLACK', 719.00);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `purchase_order_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'record creator',
  `purchase_order_status_id` bigint(20) NOT NULL DEFAULT 1,
  `purchase_order_number` varchar(40) NOT NULL,
  `date_ordered` date NOT NULL,
  `date_requested` date NOT NULL,
  `date_promised` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`purchase_order_id`, `supplier_id`, `user_id`, `purchase_order_status_id`, `purchase_order_number`, `date_ordered`, `date_requested`, `date_promised`) VALUES
(9000001, 9000001, 9000003, 5, 'PO-0001', '2026-01-05', '2026-01-13', '2026-01-12'),
(9000002, 9000002, 9000003, 5, 'PO-0002', '2026-01-06', '2026-01-14', '2026-01-13'),
(9000003, 9000003, 9000003, 5, 'PO-0003', '2026-01-07', '2026-01-15', '2026-01-14'),
(9000004, 9000004, 9000003, 5, 'PO-0004', '2026-01-08', '2026-01-16', '2026-01-15'),
(9000005, 9000005, 9000003, 5, 'PO-0005', '2026-01-09', '2026-01-17', '2026-01-16'),
(9000006, 9000001, 9000003, 5, 'PO-0006', '2026-01-10', '2026-01-18', '2026-01-17'),
(9000007, 9000002, 9000003, 5, 'PO-0007', '2026-01-11', '2026-01-19', '2026-01-18'),
(9000008, 9000003, 9000003, 5, 'PO-0008', '2026-01-12', '2026-01-20', '2026-01-19'),
(9000009, 9000004, 9000003, 5, 'PO-0009', '2026-01-13', '2026-01-21', '2026-01-20'),
(9000010, 9000005, 9000003, 5, 'PO-0010', '2026-01-14', '2026-01-22', '2026-01-21'),
(9000011, 9000001, 9000003, 3, 'PO-0011', '2026-01-15', '2026-01-23', '2026-01-22'),
(9000012, 9000002, 9000003, 2, 'PO-0012', '2026-01-16', '2026-01-24', NULL),
(9000013, 9000003, 9000003, 1, 'PO-0013', '2026-01-17', '2026-01-25', NULL),
(9000014, 9000004, 9000003, 7, 'PO-0014', '2026-01-18', '2026-01-26', NULL),
(9000015, 9000005, 9000003, 1, 'PO-0015', '2026-10-20', '2026-10-28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_acknowledgments`
--

CREATE TABLE `purchase_order_acknowledgments` (
  `purchase_order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'supplier acknowledging the PO',
  `date_acknowledged` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_acknowledgments`
--

INSERT INTO `purchase_order_acknowledgments` (`purchase_order_id`, `user_id`, `date_acknowledged`) VALUES
(9000001, 9000010, '2026-01-07 09:00:00'),
(9000002, 9000011, '2026-01-08 09:00:00'),
(9000003, 9000012, '2026-01-09 09:00:00'),
(9000004, 9000013, '2026-01-10 09:00:00'),
(9000005, 9000014, '2026-01-11 09:00:00'),
(9000006, 9000010, '2026-01-12 09:00:00'),
(9000007, 9000011, '2026-01-13 09:00:00'),
(9000008, 9000012, '2026-01-14 09:00:00'),
(9000009, 9000013, '2026-01-15 09:00:00'),
(9000010, 9000014, '2026-01-16 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_approvals`
--

CREATE TABLE `purchase_order_approvals` (
  `purchase_order_approval_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'PO reviewer',
  `approval_status_id` bigint(20) NOT NULL,
  `date_decided` datetime NOT NULL,
  `comments` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_approvals`
--

INSERT INTO `purchase_order_approvals` (`purchase_order_approval_id`, `purchase_order_id`, `user_id`, `approval_status_id`, `date_decided`, `comments`) VALUES
(9000001, 9000001, 9000001, 1, '2026-01-06 09:00:00', 'Owner approved sample purchase'),
(9000002, 9000002, 9000001, 1, '2026-01-07 09:00:00', 'Owner approved sample purchase'),
(9000003, 9000003, 9000001, 1, '2026-01-08 09:00:00', 'Owner approved sample purchase'),
(9000004, 9000004, 9000001, 1, '2026-01-09 09:00:00', 'Owner approved sample purchase'),
(9000005, 9000005, 9000001, 1, '2026-01-10 09:00:00', 'Owner approved sample purchase'),
(9000006, 9000006, 9000001, 1, '2026-01-11 09:00:00', 'Owner approved sample purchase'),
(9000007, 9000007, 9000001, 1, '2026-01-12 09:00:00', 'Owner approved sample purchase'),
(9000008, 9000008, 9000001, 1, '2026-01-13 09:00:00', 'Owner approved sample purchase'),
(9000009, 9000009, 9000001, 1, '2026-01-14 09:00:00', 'Owner approved sample purchase'),
(9000010, 9000010, 9000001, 1, '2026-01-15 09:00:00', 'Owner approved sample purchase'),
(9000011, 9000011, 9000001, 1, '2026-01-16 09:00:00', 'Owner approved sample purchase'),
(9000012, 9000013, 9000001, 2, '2026-01-18 09:00:00', 'Returned to draft for quantity review');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `purchase_order_item_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `product_variant_id` bigint(20) NOT NULL,
  `line_number` int(11) NOT NULL,
  `quantity_ordered` int(11) NOT NULL,
  `quantity_cancelled` int(11) NOT NULL DEFAULT 0,
  `unit_cost` decimal(14,2) NOT NULL,
  `discount_amount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `tax_id` bigint(20) NOT NULL,
  `vat_amount` decimal(14,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`purchase_order_item_id`, `purchase_order_id`, `product_variant_id`, `line_number`, `quantity_ordered`, `quantity_cancelled`, `unit_cost`, `discount_amount`, `tax_id`, `vat_amount`) VALUES
(9000001, 9000001, 9000001, 1, 45, 0, 231.42, 0.00, 9000001, 1249.67),
(9000002, 9000001, 9000002, 2, 45, 0, 243.02, 0.00, 9000001, 1312.31),
(9000003, 9000002, 9000003, 1, 50, 0, 289.42, 0.00, 9000001, 1736.52),
(9000004, 9000002, 9000004, 2, 50, 0, 301.02, 0.00, 9000001, 1806.12),
(9000005, 9000003, 9000005, 1, 55, 0, 347.42, 0.00, 9000002, 0.00),
(9000006, 9000003, 9000006, 2, 55, 0, 359.02, 0.00, 9000002, 0.00),
(9000007, 9000004, 9000007, 1, 40, 0, 405.42, 0.00, 9000001, 1946.02),
(9000008, 9000004, 9000008, 2, 40, 0, 417.02, 0.00, 9000001, 2001.70),
(9000009, 9000005, 9000009, 1, 45, 0, 463.42, 0.00, 9000001, 2502.47),
(9000010, 9000005, 9000010, 2, 45, 0, 475.02, 0.00, 9000001, 2565.11),
(9000011, 9000006, 9000011, 1, 50, 0, 173.42, 0.00, 9000002, 0.00),
(9000012, 9000006, 9000012, 2, 50, 0, 185.02, 0.00, 9000002, 0.00),
(9000013, 9000007, 9000013, 1, 55, 0, 231.42, 0.00, 9000001, 1527.37),
(9000014, 9000007, 9000014, 2, 55, 0, 243.02, 0.00, 9000001, 1603.93),
(9000015, 9000008, 9000015, 1, 40, 0, 289.42, 0.00, 9000001, 1389.22),
(9000016, 9000008, 9000016, 2, 40, 0, 301.02, 0.00, 9000001, 1444.90),
(9000017, 9000009, 9000017, 1, 45, 0, 347.42, 0.00, 9000002, 0.00),
(9000018, 9000009, 9000018, 2, 45, 0, 359.02, 0.00, 9000002, 0.00),
(9000019, 9000010, 9000019, 1, 50, 0, 405.42, 0.00, 9000001, 2432.52),
(9000020, 9000010, 9000020, 2, 50, 0, 417.02, 0.00, 9000001, 2502.12),
(9000021, 9000011, 9000021, 1, 55, 0, 463.42, 0.00, 9000001, 3058.57),
(9000022, 9000011, 9000022, 2, 55, 0, 475.02, 0.00, 9000001, 3135.13),
(9000023, 9000012, 9000023, 1, 40, 0, 173.42, 0.00, 9000002, 0.00),
(9000024, 9000012, 9000024, 2, 40, 0, 185.02, 0.00, 9000002, 0.00),
(9000025, 9000013, 9000025, 1, 45, 0, 231.42, 0.00, 9000001, 1249.67),
(9000026, 9000013, 9000026, 2, 45, 0, 243.02, 0.00, 9000001, 1312.31),
(9000027, 9000014, 9000027, 1, 50, 50, 289.42, 0.00, 9000001, 0.00),
(9000028, 9000014, 9000028, 2, 50, 50, 301.02, 0.00, 9000001, 0.00),
(9000029, 9000015, 9000029, 1, 55, 0, 347.42, 0.00, 9000002, 0.00),
(9000030, 9000015, 9000030, 2, 65, 0, 359.02, 0.00, 9000002, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_receipt_approvals`
--

CREATE TABLE `purchase_order_receipt_approvals` (
  `receipt_approval_id` bigint(20) NOT NULL,
  `goods_receipt_item_id` bigint(20) NOT NULL,
  `receipt_approval_status_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'inspector',
  `quantity_received` int(11) NOT NULL,
  `quantity_accepted` int(11) DEFAULT NULL,
  `quantity_rejected` int(11) DEFAULT NULL,
  `date_inspected` datetime DEFAULT NULL,
  `rejection_reason` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_receipt_approvals`
--

INSERT INTO `purchase_order_receipt_approvals` (`receipt_approval_id`, `goods_receipt_item_id`, `receipt_approval_status_id`, `user_id`, `quantity_received`, `quantity_accepted`, `quantity_rejected`, `date_inspected`, `rejection_reason`) VALUES
(9000001, 9000001, 2, 9000004, 25, 25, 0, '2026-01-10 16:00:00', NULL),
(9000002, 9000002, 2, 9000004, 25, 25, 0, '2026-01-10 16:00:00', NULL),
(9000003, 9000003, 2, 9000004, 20, 20, 0, '2026-01-11 16:00:00', NULL),
(9000004, 9000004, 2, 9000004, 20, 20, 0, '2026-01-11 16:00:00', NULL),
(9000005, 9000005, 2, 9000004, 25, 25, 0, '2026-01-12 16:00:00', NULL),
(9000006, 9000006, 2, 9000004, 25, 25, 0, '2026-01-12 16:00:00', NULL),
(9000007, 9000007, 2, 9000004, 20, 20, 0, '2026-01-13 16:00:00', NULL),
(9000008, 9000008, 3, 9000004, 20, 18, 2, '2026-01-13 16:00:00', 'inspection found two pieces with damaged seams'),
(9000009, 9000009, 2, 9000004, 25, 25, 0, '2026-01-14 16:00:00', NULL),
(9000010, 9000010, 2, 9000004, 25, 25, 0, '2026-01-14 16:00:00', NULL),
(9000011, 9000011, 2, 9000004, 20, 20, 0, '2026-01-15 16:00:00', NULL),
(9000012, 9000012, 2, 9000004, 20, 20, 0, '2026-01-15 16:00:00', NULL),
(9000013, 9000013, 2, 9000004, 25, 25, 0, '2026-01-16 16:00:00', NULL),
(9000014, 9000014, 2, 9000004, 25, 25, 0, '2026-01-16 16:00:00', NULL),
(9000015, 9000015, 2, 9000004, 20, 20, 0, '2026-01-17 16:00:00', NULL),
(9000016, 9000016, 2, 9000004, 20, 20, 0, '2026-01-17 16:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_statuses`
--

CREATE TABLE `purchase_order_statuses` (
  `purchase_order_status_id` bigint(20) NOT NULL,
  `status_code` varchar(25) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_statuses`
--

INSERT INTO `purchase_order_statuses` (`purchase_order_status_id`, `status_code`, `status_name`) VALUES
(1, 'draft', 'Draft'),
(2, 'submitted', 'Submitted'),
(3, 'approved', 'Approved'),
(4, 'sent', 'Sent'),
(5, 'acknowledged', 'Acknowledged'),
(6, 'closed', 'Closed'),
(7, 'cancelled', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `receipt_approval_statuses`
--

CREATE TABLE `receipt_approval_statuses` (
  `receipt_approval_status_id` bigint(20) NOT NULL,
  `status_code` varchar(30) NOT NULL,
  `status_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt_approval_statuses`
--

INSERT INTO `receipt_approval_statuses` (`receipt_approval_status_id`, `status_code`, `status_name`) VALUES
(1, 'pending', 'Pending'),
(2, 'approved', 'Approved'),
(3, 'partially_approved', 'Partially Approved'),
(4, 'rejected', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `receipt_statuses`
--

CREATE TABLE `receipt_statuses` (
  `receipt_status_id` bigint(20) NOT NULL,
  `status_code` varchar(30) NOT NULL,
  `status_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipt_statuses`
--

INSERT INTO `receipt_statuses` (`receipt_status_id`, `status_code`, `status_name`) VALUES
(1, 'draft', 'Draft'),
(2, 'posted', 'Posted'),
(3, 'void', 'Void');

-- --------------------------------------------------------

--
-- Table structure for table `recommendation_statuses`
--

CREATE TABLE `recommendation_statuses` (
  `recommendation_status_id` bigint(20) NOT NULL,
  `status_code` varchar(30) NOT NULL,
  `status_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommendation_statuses`
--

INSERT INTO `recommendation_statuses` (`recommendation_status_id`, `status_code`, `status_name`) VALUES
(1, 'pending', 'Pending'),
(2, 'approved', 'Approved'),
(3, 'rejected', 'Rejected'),
(4, 'converted', 'Converted'),
(5, 'expired', 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `replenishment_policies`
--

CREATE TABLE `replenishment_policies` (
  `replenishment_policy_id` bigint(20) NOT NULL,
  `product_variant_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL COMMENT 'Preferred supplier for this policy product variant; constrained through supplier_items.',
  `status_id` bigint(20) NOT NULL DEFAULT 1,
  `safety_stock_quantity` int(11) NOT NULL,
  `reorder_point_quantity` int(11) NOT NULL COMMENT 'Whole-item inventory-position threshold that triggers rule-based replenishment; not the quantity to purchase.',
  `target_stock_quantity` int(11) NOT NULL,
  `review_interval_days` int(11) NOT NULL,
  `minimum_history_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replenishment_policies`
--

INSERT INTO `replenishment_policies` (`replenishment_policy_id`, `product_variant_id`, `supplier_id`, `status_id`, `safety_stock_quantity`, `reorder_point_quantity`, `target_stock_quantity`, `review_interval_days`, `minimum_history_days`) VALUES
(9000001, 9000001, 9000001, 1, 10, 25, 80, 7, 180),
(9000002, 9000002, 9000001, 1, 10, 25, 80, 7, 180),
(9000003, 9000003, 9000002, 1, 10, 25, 80, 7, 180),
(9000004, 9000004, 9000002, 1, 10, 25, 80, 7, 180),
(9000005, 9000005, 9000003, 1, 10, 25, 80, 7, 180),
(9000006, 9000006, 9000003, 1, 10, 25, 80, 7, 180),
(9000007, 9000007, 9000004, 1, 10, 25, 80, 7, 180),
(9000008, 9000008, 9000004, 1, 10, 25, 80, 7, 180),
(9000009, 9000009, 9000005, 1, 10, 25, 80, 7, 180),
(9000010, 9000010, 9000005, 1, 10, 25, 80, 7, 180),
(9000011, 9000011, 9000001, 1, 10, 25, 80, 7, 180),
(9000012, 9000012, 9000001, 1, 10, 25, 80, 7, 180),
(9000013, 9000013, 9000002, 1, 10, 25, 80, 7, 180),
(9000014, 9000014, 9000002, 1, 10, 25, 80, 7, 180),
(9000015, 9000015, 9000003, 1, 10, 25, 80, 7, 180),
(9000016, 9000016, 9000003, 1, 10, 25, 80, 7, 180),
(9000017, 9000017, 9000004, 1, 10, 25, 80, 7, 180),
(9000018, 9000018, 9000004, 1, 10, 25, 80, 7, 180),
(9000019, 9000019, 9000005, 1, 10, 25, 80, 7, 180),
(9000020, 9000020, 9000005, 1, 10, 25, 80, 7, 180),
(9000021, 9000021, 9000001, 1, 10, 25, 80, 7, 180),
(9000022, 9000022, 9000001, 1, 10, 25, 80, 7, 180),
(9000023, 9000023, 9000002, 1, 10, 25, 80, 7, 180),
(9000024, 9000024, 9000002, 1, 10, 25, 80, 7, 180),
(9000025, 9000025, 9000003, 1, 10, 25, 80, 7, 180),
(9000026, 9000026, 9000003, 1, 10, 25, 80, 7, 180),
(9000027, 9000027, 9000004, 1, 10, 25, 80, 7, 180),
(9000028, 9000028, 9000004, 1, 10, 25, 80, 7, 180),
(9000029, 9000029, 9000005, 1, 10, 25, 80, 7, 180),
(9000030, 9000030, 9000005, 1, 10, 25, 80, 7, 180),
(9000031, 9000031, 9000001, 1, 10, 25, 80, 7, 180),
(9000032, 9000032, 9000001, 1, 10, 25, 80, 7, 180);

-- --------------------------------------------------------

--
-- Table structure for table `replenishment_recommendations`
--

CREATE TABLE `replenishment_recommendations` (
  `replenishment_recommendation_id` bigint(20) NOT NULL,
  `product_variant_id` bigint(20) NOT NULL,
  `replenishment_policy_id` bigint(20) NOT NULL,
  `demand_forecast_id` bigint(20) DEFAULT NULL,
  `purchase_order_item_id` bigint(20) DEFAULT NULL,
  `on_hand_quantity_snapshot` int(11) NOT NULL,
  `open_supply_quantity_snapshot` int(11) NOT NULL,
  `open_demand_quantity_snapshot` int(11) NOT NULL,
  `lead_time_days_snapshot` int(11) NOT NULL,
  `recommended_quantity` int(11) NOT NULL,
  `recommendation_status_id` bigint(20) NOT NULL,
  `date_generated` datetime NOT NULL,
  `date_expires` datetime NOT NULL COMMENT 'Exclusive validity deadline for this recommendation, including the time of day.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replenishment_recommendations`
--

INSERT INTO `replenishment_recommendations` (`replenishment_recommendation_id`, `product_variant_id`, `replenishment_policy_id`, `demand_forecast_id`, `purchase_order_item_id`, `on_hand_quantity_snapshot`, `open_supply_quantity_snapshot`, `open_demand_quantity_snapshot`, `lead_time_days_snapshot`, `recommended_quantity`, `recommendation_status_id`, `date_generated`, `date_expires`) VALUES
(9000001, 9000023, 9000023, NULL, NULL, 18, 0, 0, 6, 65, 1, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
(9000002, 9000024, 9000024, NULL, NULL, 17, 0, 0, 7, 65, 1, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
(9000003, 9000025, 9000025, NULL, NULL, 17, 0, 0, 3, 65, 1, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
(9000004, 9000026, 9000026, NULL, NULL, 16, 0, 0, 4, 65, 2, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
(9000005, 9000027, 9000027, NULL, NULL, 16, 0, 0, 5, 65, 2, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
(9000006, 9000028, 9000028, NULL, NULL, 19, 0, 0, 6, 65, 3, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
(9000007, 9000029, 9000029, NULL, NULL, 19, 0, 0, 7, 65, 3, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
(9000008, 9000030, 9000030, NULL, 9000030, 18, 0, 0, 3, 65, 4, '2026-10-20 09:00:00', '2026-10-27 09:00:00'),
(9000009, 9000031, 9000031, NULL, NULL, 18, 0, 0, 4, 65, 5, '2026-10-01 09:00:00', '2026-10-08 09:00:00'),
(9000010, 9000032, 9000032, NULL, NULL, 17, 0, 0, 5, 65, 5, '2026-10-01 09:00:00', '2026-10-08 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `replenishment_reviews`
--

CREATE TABLE `replenishment_reviews` (
  `replenishment_recommendation_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'reviewer',
  `date_reviewed` datetime NOT NULL,
  `review_notes` varchar(500) DEFAULT NULL COMMENT 'Explanation of the approval or rejection; required by the application for rejection.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replenishment_reviews`
--

INSERT INTO `replenishment_reviews` (`replenishment_recommendation_id`, `user_id`, `date_reviewed`, `review_notes`) VALUES
(9000004, 9000001, '2026-10-20 10:00:00', 'Owner approved recommended whole-piece order quantity'),
(9000005, 9000001, '2026-10-20 10:00:00', 'Owner approved recommended whole-piece order quantity'),
(9000006, 9000001, '2026-10-20 10:00:00', 'Purchasing deferred after merchandising review'),
(9000007, 9000001, '2026-10-20 10:00:00', 'Purchasing deferred after merchandising review'),
(9000008, 9000001, '2026-10-20 10:00:00', 'Owner approved recommended whole-piece order quantity');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) NOT NULL,
  `role_code` varchar(30) NOT NULL,
  `role_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_code`, `role_name`) VALUES
(1, 'administrator', 'Administrator'),
(2, 'procurement', 'Procurement Staff'),
(3, 'inventory', 'Inventory Staff'),
(4, 'sales', 'Sales Staff'),
(5, 'supplier', 'Supplier'),
(6, 'hr', 'HR Sales and Customer Operations');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` bigint(20) NOT NULL,
  `sales_order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `sale_status_id` bigint(20) NOT NULL,
  `sale_number` varchar(40) NOT NULL,
  `date_sold` datetime NOT NULL,
  `void_reason` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `sales_order_id`, `user_id`, `sale_status_id`, `sale_number`, `date_sold`, `void_reason`) VALUES
(9000001, 9000001, 9000004, 1, 'SALE-0001', '2026-02-05 10:00:00', NULL),
(9000002, 9000002, 9000005, 1, 'SALE-0002', '2026-02-12 10:00:00', NULL),
(9000003, 9000003, 9000003, 1, 'SALE-0003', '2026-02-19 10:00:00', NULL),
(9000004, 9000004, 9000004, 1, 'SALE-0004', '2026-03-05 10:00:00', NULL),
(9000005, 9000005, 9000005, 1, 'SALE-0005', '2026-03-12 10:00:00', NULL),
(9000006, 9000006, 9000003, 1, 'SALE-0006', '2026-03-19 10:00:00', NULL),
(9000007, 9000007, 9000004, 1, 'SALE-0007', '2026-04-05 10:00:00', NULL),
(9000008, 9000008, 9000005, 1, 'SALE-0008', '2026-04-12 10:00:00', NULL),
(9000009, 9000009, 9000003, 1, 'SALE-0009', '2026-04-19 10:00:00', NULL),
(9000010, 9000010, 9000004, 1, 'SALE-0010', '2026-05-05 10:00:00', NULL),
(9000011, 9000011, 9000005, 1, 'SALE-0011', '2026-05-12 10:00:00', NULL),
(9000012, 9000012, 9000003, 1, 'SALE-0012', '2026-05-19 10:00:00', NULL),
(9000013, 9000013, 9000004, 1, 'SALE-0013', '2026-06-05 10:00:00', NULL),
(9000014, 9000014, 9000005, 1, 'SALE-0014', '2026-06-12 10:00:00', NULL),
(9000015, 9000015, 9000003, 1, 'SALE-0015', '2026-06-19 10:00:00', NULL),
(9000016, 9000016, 9000004, 1, 'SALE-0016', '2026-07-05 10:00:00', NULL),
(9000017, 9000017, 9000005, 1, 'SALE-0017', '2026-07-12 10:00:00', NULL),
(9000018, 9000018, 9000003, 1, 'SALE-0018', '2026-07-19 10:00:00', NULL),
(9000019, 9000019, 9000004, 1, 'SALE-0019', '2026-08-05 10:00:00', NULL),
(9000020, 9000020, 9000005, 1, 'SALE-0020', '2026-08-12 10:00:00', NULL),
(9000021, 9000021, 9000003, 1, 'SALE-0021', '2026-08-19 10:00:00', NULL),
(9000022, 9000022, 9000004, 1, 'SALE-0022', '2026-09-05 10:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `sales_order_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'record creator',
  `sales_order_number` varchar(40) NOT NULL,
  `date_ordered` datetime NOT NULL,
  `date_required` date NOT NULL,
  `order_status_id` bigint(20) NOT NULL,
  `delivery_address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_orders`
--

INSERT INTO `sales_orders` (`sales_order_id`, `customer_id`, `user_id`, `sales_order_number`, `date_ordered`, `date_required`, `order_status_id`, `delivery_address`) VALUES
(9000001, 9000001, 9000004, 'SO-0001', '2026-02-05 09:00:00', '2026-02-10', 6, 'Delivery Address 1, Cagayan de Oro City, Philippines'),
(9000002, 9000002, 9000005, 'SO-0002', '2026-02-12 09:00:00', '2026-02-17', 6, 'Delivery Address 2, Cagayan de Oro City, Philippines'),
(9000003, 9000003, 9000003, 'SO-0003', '2026-02-19 09:00:00', '2026-02-24', 6, 'Delivery Address 3, Cagayan de Oro City, Philippines'),
(9000004, 9000004, 9000004, 'SO-0004', '2026-03-05 09:00:00', '2026-03-10', 6, 'Delivery Address 4, Cagayan de Oro City, Philippines'),
(9000005, 9000005, 9000005, 'SO-0005', '2026-03-12 09:00:00', '2026-03-17', 6, 'Delivery Address 5, Cagayan de Oro City, Philippines'),
(9000006, 9000006, 9000003, 'SO-0006', '2026-03-19 09:00:00', '2026-03-24', 6, 'Delivery Address 6, Cagayan de Oro City, Philippines'),
(9000007, 9000007, 9000004, 'SO-0007', '2026-04-05 09:00:00', '2026-04-10', 6, 'Delivery Address 7, Cagayan de Oro City, Philippines'),
(9000008, 9000008, 9000005, 'SO-0008', '2026-04-12 09:00:00', '2026-04-17', 6, 'Delivery Address 8, Cagayan de Oro City, Philippines'),
(9000009, 9000009, 9000003, 'SO-0009', '2026-04-19 09:00:00', '2026-04-24', 6, 'Delivery Address 9, Cagayan de Oro City, Philippines'),
(9000010, 9000010, 9000004, 'SO-0010', '2026-05-05 09:00:00', '2026-05-10', 6, 'Delivery Address 10, Cagayan de Oro City, Philippines'),
(9000011, 9000011, 9000005, 'SO-0011', '2026-05-12 09:00:00', '2026-05-17', 6, 'Delivery Address 11, Cagayan de Oro City, Philippines'),
(9000012, 9000012, 9000003, 'SO-0012', '2026-05-19 09:00:00', '2026-05-24', 6, 'Delivery Address 12, Cagayan de Oro City, Philippines'),
(9000013, 9000013, 9000004, 'SO-0013', '2026-06-05 09:00:00', '2026-06-10', 6, 'Delivery Address 13, Cagayan de Oro City, Philippines'),
(9000014, 9000014, 9000005, 'SO-0014', '2026-06-12 09:00:00', '2026-06-17', 6, 'Delivery Address 14, Cagayan de Oro City, Philippines'),
(9000015, 9000015, 9000003, 'SO-0015', '2026-06-19 09:00:00', '2026-06-24', 4, 'Delivery Address 15, Cagayan de Oro City, Philippines'),
(9000016, 9000016, 9000004, 'SO-0016', '2026-07-05 09:00:00', '2026-07-10', 4, 'Delivery Address 16, Cagayan de Oro City, Philippines'),
(9000017, 9000017, 9000005, 'SO-0017', '2026-07-12 09:00:00', '2026-07-17', 4, 'Delivery Address 17, Cagayan de Oro City, Philippines'),
(9000018, 9000018, 9000003, 'SO-0018', '2026-07-19 09:00:00', '2026-07-24', 4, 'Delivery Address 18, Cagayan de Oro City, Philippines'),
(9000019, 9000019, 9000004, 'SO-0019', '2026-08-05 09:00:00', '2026-08-10', 3, 'Delivery Address 19, Cagayan de Oro City, Philippines'),
(9000020, 9000020, 9000005, 'SO-0020', '2026-08-12 09:00:00', '2026-08-17', 3, 'Delivery Address 20, Cagayan de Oro City, Philippines'),
(9000021, 9000001, 9000003, 'SO-0021', '2026-08-19 09:00:00', '2026-08-24', 3, 'Delivery Address 1, Cagayan de Oro City, Philippines'),
(9000022, 9000002, 9000004, 'SO-0022', '2026-09-05 09:00:00', '2026-09-10', 3, 'Delivery Address 2, Cagayan de Oro City, Philippines'),
(9000023, 9000003, 9000005, 'SO-0023', '2026-09-12 09:00:00', '2026-09-17', 1, 'Delivery Address 3, Cagayan de Oro City, Philippines'),
(9000024, 9000004, 9000003, 'SO-0024', '2026-09-19 09:00:00', '2026-09-24', 7, 'Delivery Address 4, Cagayan de Oro City, Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_discounts`
--

CREATE TABLE `sales_order_discounts` (
  `sales_order_discount_id` bigint(20) NOT NULL,
  `sales_order_id` bigint(20) NOT NULL,
  `discount_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'discount verifier',
  `discount_amount` decimal(14,2) NOT NULL,
  `eligibility_notes` varchar(500) DEFAULT NULL,
  `date_applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_order_discounts`
--

INSERT INTO `sales_order_discounts` (`sales_order_discount_id`, `sales_order_id`, `discount_id`, `user_id`, `discount_amount`, `eligibility_notes`, `date_applied`) VALUES
(9000001, 9000001, 9000003, 9000004, 143.65, NULL, '2026-02-05 09:10:00'),
(9000002, 9000002, 9000002, 9000004, 251.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-02-12 09:10:00'),
(9000003, 9000003, 9000003, 9000004, 91.85, NULL, '2026-02-19 09:10:00'),
(9000004, 9000004, 9000002, 9000004, 355.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-03-05 09:10:00'),
(9000005, 9000005, 9000003, 9000004, 283.65, NULL, '2026-03-12 09:10:00'),
(9000006, 9000006, 9000002, 9000004, 151.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-03-19 09:10:00'),
(9000007, 9000007, 9000003, 9000004, 61.85, NULL, '2026-04-05 09:10:00'),
(9000008, 9000008, 9000002, 9000004, 255.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-04-12 09:10:00'),
(9000009, 9000009, 9000003, 9000004, 213.65, NULL, '2026-04-19 09:10:00'),
(9000010, 9000010, 9000002, 9000004, 351.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-05-05 09:10:00'),
(9000011, 9000011, 9000003, 9000004, 121.85, NULL, '2026-05-12 09:10:00'),
(9000012, 9000012, 9000002, 9000004, 155.50, 'Synthetic verified family eligibility approved by Owner; no actual customer evidence', '2026-05-19 09:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_items`
--

CREATE TABLE `sales_order_items` (
  `sales_order_item_id` bigint(20) NOT NULL,
  `sales_order_id` bigint(20) NOT NULL,
  `product_variant_id` bigint(20) NOT NULL,
  `line_number` int(11) NOT NULL,
  `quantity_ordered` int(11) NOT NULL,
  `quantity_cancelled` int(11) NOT NULL DEFAULT 0,
  `unit_price` decimal(14,2) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `vat_amount` decimal(14,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_order_items`
--

INSERT INTO `sales_order_items` (`sales_order_item_id`, `sales_order_id`, `product_variant_id`, `line_number`, `quantity_ordered`, `quantity_cancelled`, `unit_price`, `tax_id`, `vat_amount`) VALUES
(9000001, 9000001, 9000001, 1, 3, 0, 399.00, 9000001, 136.46),
(9000002, 9000001, 9000002, 2, 4, 0, 419.00, 9000001, 191.06),
(9000003, 9000002, 9000003, 1, 4, 0, 499.00, 9000001, 215.57),
(9000004, 9000002, 9000004, 2, 1, 0, 519.00, 9000001, 56.05),
(9000005, 9000003, 9000005, 1, 1, 0, 599.00, 9000001, 68.29),
(9000006, 9000003, 9000006, 2, 2, 0, 619.00, 9000001, 141.13),
(9000007, 9000004, 9000007, 1, 2, 0, 699.00, 9000001, 150.98),
(9000008, 9000004, 9000008, 2, 3, 0, 719.00, 9000001, 232.96),
(9000009, 9000005, 9000009, 1, 3, 0, 799.00, 9000002, 0.00),
(9000010, 9000005, 9000010, 2, 4, 0, 819.00, 9000002, 0.00),
(9000011, 9000006, 9000011, 1, 4, 0, 299.00, 9000001, 129.17),
(9000012, 9000006, 9000012, 2, 1, 0, 319.00, 9000001, 34.45),
(9000013, 9000007, 9000013, 1, 1, 0, 399.00, 9000001, 45.49),
(9000014, 9000007, 9000014, 2, 2, 0, 419.00, 9000001, 95.53),
(9000015, 9000008, 9000015, 1, 2, 0, 499.00, 9000001, 107.78),
(9000016, 9000008, 9000016, 2, 3, 0, 519.00, 9000001, 168.16),
(9000017, 9000009, 9000017, 1, 3, 0, 599.00, 9000001, 204.86),
(9000018, 9000009, 9000018, 2, 4, 0, 619.00, 9000001, 282.26),
(9000019, 9000010, 9000019, 1, 4, 0, 699.00, 9000002, 0.00),
(9000020, 9000010, 9000020, 2, 1, 0, 719.00, 9000002, 0.00),
(9000021, 9000011, 9000021, 1, 1, 0, 799.00, 9000001, 91.09),
(9000022, 9000011, 9000022, 2, 2, 0, 819.00, 9000001, 186.73),
(9000023, 9000012, 9000023, 1, 2, 0, 299.00, 9000001, 64.58),
(9000024, 9000012, 9000024, 2, 3, 0, 319.00, 9000001, 103.36),
(9000025, 9000013, 9000025, 1, 3, 0, 399.00, 9000001, 143.64),
(9000026, 9000013, 9000026, 2, 4, 0, 419.00, 9000001, 201.12),
(9000027, 9000014, 9000027, 1, 4, 0, 499.00, 9000001, 239.52),
(9000028, 9000014, 9000028, 2, 1, 0, 519.00, 9000001, 62.28),
(9000029, 9000015, 9000029, 1, 1, 0, 599.00, 9000002, 0.00),
(9000030, 9000015, 9000030, 2, 2, 0, 619.00, 9000002, 0.00),
(9000031, 9000016, 9000031, 1, 2, 0, 699.00, 9000001, 167.76),
(9000032, 9000016, 9000032, 2, 3, 0, 719.00, 9000001, 258.84),
(9000033, 9000017, 9000001, 1, 3, 0, 399.00, 9000001, 143.64),
(9000034, 9000017, 9000002, 2, 4, 0, 419.00, 9000001, 201.12),
(9000035, 9000018, 9000003, 1, 4, 0, 499.00, 9000001, 239.52),
(9000036, 9000018, 9000004, 2, 1, 0, 519.00, 9000001, 62.28),
(9000037, 9000019, 9000005, 1, 1, 0, 599.00, 9000001, 71.88),
(9000038, 9000019, 9000006, 2, 2, 0, 619.00, 9000001, 148.56),
(9000039, 9000020, 9000007, 1, 2, 0, 699.00, 9000002, 0.00),
(9000040, 9000020, 9000008, 2, 3, 0, 719.00, 9000002, 0.00),
(9000041, 9000021, 9000009, 1, 3, 0, 799.00, 9000001, 287.64),
(9000042, 9000021, 9000010, 2, 4, 0, 819.00, 9000001, 393.12),
(9000043, 9000022, 9000011, 1, 4, 0, 299.00, 9000001, 143.52),
(9000044, 9000022, 9000012, 2, 1, 0, 319.00, 9000001, 38.28),
(9000045, 9000023, 9000013, 1, 1, 0, 399.00, 9000001, 47.88),
(9000046, 9000023, 9000014, 2, 2, 0, 419.00, 9000001, 100.56),
(9000047, 9000024, 9000015, 1, 2, 2, 499.00, 9000001, 0.00),
(9000048, 9000024, 9000016, 2, 3, 3, 519.00, 9000001, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `sales_payments`
--

CREATE TABLE `sales_payments` (
  `sales_payment_id` bigint(20) NOT NULL,
  `sale_id` bigint(20) NOT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `original_payment_id` bigint(20) DEFAULT NULL,
  `payment_number` varchar(40) NOT NULL,
  `payment_type` enum('payment','refund') NOT NULL,
  `payment_amount` decimal(14,2) NOT NULL,
  `transaction_reference` varchar(100) DEFAULT NULL,
  `date_paid` datetime NOT NULL,
  `transaction_request_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_payments`
--

INSERT INTO `sales_payments` (`sales_payment_id`, `sale_id`, `payment_method_id`, `user_id`, `original_payment_id`, `payment_number`, `payment_type`, `payment_amount`, `transaction_reference`, `date_paid`, `transaction_request_key`) VALUES
(9000001, 9000001, 4, 9000004, NULL, 'CUSPAY-0001', 'payment', 1222.75, 'EWALLET-0001', '2026-02-05 11:00:00', 'CUSPAY-REQ-0001'),
(9000002, 9000001, 4, 9000004, NULL, 'CUSPAY-0002', 'payment', 1834.12, 'EWALLET-0002', '2026-02-05 12:00:00', 'CUSPAY-REQ-0002'),
(9000003, 9000002, 4, 9000004, NULL, 'CUSPAY-0003', 'payment', 1014.05, 'EWALLET-0003', '2026-02-12 11:00:00', 'CUSPAY-REQ-0003'),
(9000004, 9000002, 4, 9000004, NULL, 'CUSPAY-0004', 'payment', 1521.07, 'EWALLET-0004', '2026-02-12 12:00:00', 'CUSPAY-REQ-0004'),
(9000005, 9000003, 1, 9000004, NULL, 'CUSPAY-0005', 'payment', 781.83, NULL, '2026-02-19 11:00:00', 'CUSPAY-REQ-0005'),
(9000006, 9000003, 1, 9000004, NULL, 'CUSPAY-0006', 'payment', 1172.74, NULL, '2026-02-19 12:00:00', 'CUSPAY-REQ-0006'),
(9000007, 9000004, 4, 9000004, NULL, 'CUSPAY-0007', 'payment', 716.69, 'EWALLET-0007', '2026-03-05 11:00:00', 'CUSPAY-REQ-0007'),
(9000008, 9000004, 4, 9000004, NULL, 'CUSPAY-0008', 'payment', 1075.03, 'EWALLET-0008', '2026-03-05 12:00:00', 'CUSPAY-REQ-0008'),
(9000009, 9000005, 4, 9000004, NULL, 'CUSPAY-0009', 'payment', 2155.74, 'EWALLET-0009', '2026-03-12 11:00:00', 'CUSPAY-REQ-0009'),
(9000010, 9000005, 4, 9000004, NULL, 'CUSPAY-0010', 'payment', 3233.61, 'EWALLET-0010', '2026-03-12 12:00:00', 'CUSPAY-REQ-0010'),
(9000011, 9000006, 1, 9000004, NULL, 'CUSPAY-0011', 'payment', 610.85, NULL, '2026-03-19 11:00:00', 'CUSPAY-REQ-0011'),
(9000012, 9000006, 1, 9000004, NULL, 'CUSPAY-0012', 'payment', 916.27, NULL, '2026-03-19 12:00:00', 'CUSPAY-REQ-0012'),
(9000013, 9000007, 4, 9000004, NULL, 'CUSPAY-0013', 'payment', 526.47, 'EWALLET-0013', '2026-04-05 11:00:00', 'CUSPAY-REQ-0013'),
(9000014, 9000007, 4, 9000004, NULL, 'CUSPAY-0014', 'payment', 789.70, 'EWALLET-0014', '2026-04-05 12:00:00', 'CUSPAY-REQ-0014'),
(9000015, 9000008, 4, 9000004, NULL, 'CUSPAY-0015', 'payment', 1287.72, 'EWALLET-0015', '2026-04-12 11:00:00', 'CUSPAY-REQ-0015'),
(9000016, 9000009, 1, 9000004, NULL, 'CUSPAY-0016', 'payment', 4546.47, NULL, '2026-04-19 11:00:00', 'CUSPAY-REQ-0016'),
(9000017, 9000010, 4, 9000004, NULL, 'CUSPAY-0017', 'payment', 3163.50, 'EWALLET-0017', '2026-05-05 11:00:00', 'CUSPAY-REQ-0017'),
(9000018, 9000011, 4, 9000004, NULL, 'CUSPAY-0018', 'payment', 2592.97, 'EWALLET-0018', '2026-05-12 11:00:00', 'CUSPAY-REQ-0018'),
(9000019, 9000012, 1, 9000004, NULL, 'CUSPAY-0019', 'payment', 783.72, NULL, '2026-05-19 11:00:00', 'CUSPAY-REQ-0019'),
(9000020, 9000013, 4, 9000004, NULL, 'CUSPAY-0020', 'payment', 3217.76, 'EWALLET-0020', '2026-06-05 11:00:00', 'CUSPAY-REQ-0020'),
(9000021, 9000014, 4, 9000004, NULL, 'CUSPAY-0021', 'payment', 2816.80, 'EWALLET-0021', '2026-06-12 11:00:00', 'CUSPAY-REQ-0021'),
(9000022, 9000015, 1, 9000004, NULL, 'CUSPAY-0022', 'payment', 1837.00, NULL, '2026-06-19 11:00:00', 'CUSPAY-REQ-0022'),
(9000023, 9000016, 4, 9000004, NULL, 'CUSPAY-0023', 'payment', 1990.80, 'EWALLET-0023', '2026-07-05 11:00:00', 'CUSPAY-REQ-0023'),
(9000024, 9000017, 4, 9000004, NULL, 'CUSPAY-0024', 'payment', 3217.76, 'EWALLET-0024', '2026-07-12 11:00:00', 'CUSPAY-REQ-0024'),
(9000025, 9000018, 1, 9000004, NULL, 'CUSPAY-0025', 'payment', 2816.80, NULL, '2026-07-19 11:00:00', 'CUSPAY-REQ-0025');

--
-- Triggers `sales_payments`
--
DELIMITER $$
CREATE TRIGGER `trg_sales_payments_insert_self_reference` AFTER INSERT ON `sales_payments` FOR EACH ROW BEGIN
  IF NOT (NEW.`original_payment_id` IS NULL OR NEW.`original_payment_id` <> NEW.`sales_payment_id`) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A payment cannot reference itself as its original payment';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_sales_payments_update_self_reference` AFTER UPDATE ON `sales_payments` FOR EACH ROW BEGIN
  IF NOT (NEW.`original_payment_id` IS NULL OR NEW.`original_payment_id` <> NEW.`sales_payment_id`) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A payment cannot reference itself as its original payment';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sale_statuses`
--

CREATE TABLE `sale_statuses` (
  `sale_status_id` bigint(20) NOT NULL,
  `status_code` varchar(30) NOT NULL,
  `status_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_statuses`
--

INSERT INTO `sale_statuses` (`sale_status_id`, `status_code`, `status_name`) VALUES
(1, 'posted', 'Posted'),
(2, 'void', 'Void');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `status_id` bigint(20) NOT NULL,
  `status_code` varchar(20) NOT NULL,
  `status_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`status_id`, `status_code`, `status_name`) VALUES
(1, 'active', 'Active'),
(2, 'inactive', 'Inactive'),
(3, 'archived', 'Archived');

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustments`
--

CREATE TABLE `stock_adjustments` (
  `stock_adjustment_id` bigint(20) NOT NULL,
  `product_variant_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'adjustment requester',
  `adjustment_type` enum('opening','count_correction','damage','loss') NOT NULL,
  `quantity_change` int(11) NOT NULL,
  `adjustment_reason` varchar(500) NOT NULL,
  `date_created` date NOT NULL COMMENT 'Creation calendar date only; no time of day is stored.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_adjustments`
--

INSERT INTO `stock_adjustments` (`stock_adjustment_id`, `product_variant_id`, `user_id`, `adjustment_type`, `quantity_change`, `adjustment_reason`, `date_created`) VALUES
(9000001, 9000001, 9000003, 'opening', 120, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000002, 9000002, 9000003, 'opening', 140, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000003, 9000003, 9000003, 'opening', 160, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000004, 9000004, 9000003, 'opening', 180, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000005, 9000005, 9000003, 'opening', 100, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000006, 9000006, 9000003, 'opening', 120, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000007, 9000007, 9000003, 'opening', 140, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000008, 9000008, 9000003, 'opening', 160, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000009, 9000009, 9000003, 'opening', 180, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000010, 9000010, 9000003, 'opening', 100, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000011, 9000011, 9000003, 'opening', 120, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000012, 9000012, 9000003, 'opening', 140, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000013, 9000013, 9000003, 'opening', 160, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000014, 9000014, 9000003, 'opening', 180, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000015, 9000015, 9000003, 'opening', 100, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000016, 9000016, 9000003, 'opening', 120, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000017, 9000017, 9000003, 'opening', 140, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000018, 9000018, 9000003, 'opening', 160, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000019, 9000019, 9000003, 'opening', 180, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000020, 9000020, 9000003, 'opening', 100, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000021, 9000021, 9000003, 'opening', 120, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000022, 9000022, 9000003, 'opening', 140, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000023, 9000023, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000024, 9000024, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000025, 9000025, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000026, 9000026, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000027, 9000027, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000028, 9000028, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000029, 9000029, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000030, 9000030, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000031, 9000031, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03'),
(9000032, 9000032, 9000003, 'opening', 20, 'Sample opening count of finished clothing pieces', '2026-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustment_approvals`
--

CREATE TABLE `stock_adjustment_approvals` (
  `stock_adjustment_approval_id` bigint(20) NOT NULL,
  `stock_adjustment_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'stock adjustment reviewer',
  `approval_status_id` bigint(20) NOT NULL,
  `date_decided` datetime NOT NULL,
  `comments` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_adjustment_approvals`
--

INSERT INTO `stock_adjustment_approvals` (`stock_adjustment_approval_id`, `stock_adjustment_id`, `user_id`, `approval_status_id`, `date_decided`, `comments`) VALUES
(9000001, 9000001, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000002, 9000002, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000003, 9000003, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000004, 9000004, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000005, 9000005, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000006, 9000006, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000007, 9000007, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000008, 9000008, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000009, 9000009, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000010, 9000010, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000011, 9000011, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000012, 9000012, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000013, 9000013, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000014, 9000014, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000015, 9000015, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000016, 9000016, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000017, 9000017, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000018, 9000018, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000019, 9000019, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000020, 9000020, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000021, 9000021, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000022, 9000022, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000023, 9000023, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000024, 9000024, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000025, 9000025, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000026, 9000026, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000027, 9000027, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000028, 9000028, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000029, 9000029, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000030, 9000030, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000031, 9000031, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample'),
(9000032, 9000032, 9000001, 1, '2026-01-03 09:00:00', 'Opening count approved for sample');

-- --------------------------------------------------------

--
-- Table structure for table `stock_movements`
--

CREATE TABLE `stock_movements` (
  `stock_movement_id` bigint(20) NOT NULL,
  `product_variant_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'ledger posting staff member',
  `goods_receipt_item_id` bigint(20) DEFAULT NULL,
  `delivery_item_id` bigint(20) DEFAULT NULL,
  `stock_adjustment_id` bigint(20) DEFAULT NULL,
  `original_movement_id` bigint(20) DEFAULT NULL,
  `movement_type` enum('receipt','dispatch','adjustment','reversal') NOT NULL,
  `quantity_change` int(11) NOT NULL,
  `unit_cost` decimal(14,2) DEFAULT NULL,
  `transaction_request_key` varchar(100) NOT NULL,
  `date_posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_movements`
--

INSERT INTO `stock_movements` (`stock_movement_id`, `product_variant_id`, `user_id`, `goods_receipt_item_id`, `delivery_item_id`, `stock_adjustment_id`, `original_movement_id`, `movement_type`, `quantity_change`, `unit_cost`, `transaction_request_key`, `date_posted`) VALUES
(9000001, 9000001, 9000003, NULL, NULL, 9000001, NULL, 'adjustment', 120, 231.42, 'STOCK-0001', '2026-01-03 09:05:00'),
(9000002, 9000002, 9000003, NULL, NULL, 9000002, NULL, 'adjustment', 140, 243.02, 'STOCK-0002', '2026-01-03 09:05:00'),
(9000003, 9000003, 9000003, NULL, NULL, 9000003, NULL, 'adjustment', 160, 289.42, 'STOCK-0003', '2026-01-03 09:05:00'),
(9000004, 9000004, 9000003, NULL, NULL, 9000004, NULL, 'adjustment', 180, 301.02, 'STOCK-0004', '2026-01-03 09:05:00'),
(9000005, 9000005, 9000003, NULL, NULL, 9000005, NULL, 'adjustment', 100, 347.42, 'STOCK-0005', '2026-01-03 09:05:00'),
(9000006, 9000006, 9000003, NULL, NULL, 9000006, NULL, 'adjustment', 120, 359.02, 'STOCK-0006', '2026-01-03 09:05:00'),
(9000007, 9000007, 9000003, NULL, NULL, 9000007, NULL, 'adjustment', 140, 405.42, 'STOCK-0007', '2026-01-03 09:05:00'),
(9000008, 9000008, 9000003, NULL, NULL, 9000008, NULL, 'adjustment', 160, 417.02, 'STOCK-0008', '2026-01-03 09:05:00'),
(9000009, 9000009, 9000003, NULL, NULL, 9000009, NULL, 'adjustment', 180, 463.42, 'STOCK-0009', '2026-01-03 09:05:00'),
(9000010, 9000010, 9000003, NULL, NULL, 9000010, NULL, 'adjustment', 100, 475.02, 'STOCK-0010', '2026-01-03 09:05:00'),
(9000011, 9000011, 9000003, NULL, NULL, 9000011, NULL, 'adjustment', 120, 173.42, 'STOCK-0011', '2026-01-03 09:05:00'),
(9000012, 9000012, 9000003, NULL, NULL, 9000012, NULL, 'adjustment', 140, 185.02, 'STOCK-0012', '2026-01-03 09:05:00'),
(9000013, 9000013, 9000003, NULL, NULL, 9000013, NULL, 'adjustment', 160, 231.42, 'STOCK-0013', '2026-01-03 09:05:00'),
(9000014, 9000014, 9000003, NULL, NULL, 9000014, NULL, 'adjustment', 180, 243.02, 'STOCK-0014', '2026-01-03 09:05:00'),
(9000015, 9000015, 9000003, NULL, NULL, 9000015, NULL, 'adjustment', 100, 289.42, 'STOCK-0015', '2026-01-03 09:05:00'),
(9000016, 9000016, 9000003, NULL, NULL, 9000016, NULL, 'adjustment', 120, 301.02, 'STOCK-0016', '2026-01-03 09:05:00'),
(9000017, 9000017, 9000003, NULL, NULL, 9000017, NULL, 'adjustment', 140, 347.42, 'STOCK-0017', '2026-01-03 09:05:00'),
(9000018, 9000018, 9000003, NULL, NULL, 9000018, NULL, 'adjustment', 160, 359.02, 'STOCK-0018', '2026-01-03 09:05:00'),
(9000019, 9000019, 9000003, NULL, NULL, 9000019, NULL, 'adjustment', 180, 405.42, 'STOCK-0019', '2026-01-03 09:05:00'),
(9000020, 9000020, 9000003, NULL, NULL, 9000020, NULL, 'adjustment', 100, 417.02, 'STOCK-0020', '2026-01-03 09:05:00'),
(9000021, 9000021, 9000003, NULL, NULL, 9000021, NULL, 'adjustment', 120, 463.42, 'STOCK-0021', '2026-01-03 09:05:00'),
(9000022, 9000022, 9000003, NULL, NULL, 9000022, NULL, 'adjustment', 140, 475.02, 'STOCK-0022', '2026-01-03 09:05:00'),
(9000023, 9000023, 9000003, NULL, NULL, 9000023, NULL, 'adjustment', 20, 173.42, 'STOCK-0023', '2026-01-03 09:05:00'),
(9000024, 9000024, 9000003, NULL, NULL, 9000024, NULL, 'adjustment', 20, 185.02, 'STOCK-0024', '2026-01-03 09:05:00'),
(9000025, 9000025, 9000003, NULL, NULL, 9000025, NULL, 'adjustment', 20, 231.42, 'STOCK-0025', '2026-01-03 09:05:00'),
(9000026, 9000026, 9000003, NULL, NULL, 9000026, NULL, 'adjustment', 20, 243.02, 'STOCK-0026', '2026-01-03 09:05:00'),
(9000027, 9000027, 9000003, NULL, NULL, 9000027, NULL, 'adjustment', 20, 289.42, 'STOCK-0027', '2026-01-03 09:05:00'),
(9000028, 9000028, 9000003, NULL, NULL, 9000028, NULL, 'adjustment', 20, 301.02, 'STOCK-0028', '2026-01-03 09:05:00'),
(9000029, 9000029, 9000003, NULL, NULL, 9000029, NULL, 'adjustment', 20, 347.42, 'STOCK-0029', '2026-01-03 09:05:00'),
(9000030, 9000030, 9000003, NULL, NULL, 9000030, NULL, 'adjustment', 20, 359.02, 'STOCK-0030', '2026-01-03 09:05:00'),
(9000031, 9000031, 9000003, NULL, NULL, 9000031, NULL, 'adjustment', 20, 405.42, 'STOCK-0031', '2026-01-03 09:05:00'),
(9000032, 9000032, 9000003, NULL, NULL, 9000032, NULL, 'adjustment', 20, 417.02, 'STOCK-0032', '2026-01-03 09:05:00'),
(9000033, 9000001, 9000003, 9000001, NULL, NULL, NULL, 'receipt', 25, 231.42, 'STOCK-0033', '2026-01-10 16:10:00'),
(9000034, 9000002, 9000003, 9000002, NULL, NULL, NULL, 'receipt', 25, 243.02, 'STOCK-0034', '2026-01-10 16:10:00'),
(9000035, 9000003, 9000003, 9000003, NULL, NULL, NULL, 'receipt', 20, 289.42, 'STOCK-0035', '2026-01-11 16:10:00'),
(9000036, 9000004, 9000003, 9000004, NULL, NULL, NULL, 'receipt', 20, 301.02, 'STOCK-0036', '2026-01-11 16:10:00'),
(9000037, 9000005, 9000003, 9000005, NULL, NULL, NULL, 'receipt', 25, 347.42, 'STOCK-0037', '2026-01-12 16:10:00'),
(9000038, 9000006, 9000003, 9000006, NULL, NULL, NULL, 'receipt', 25, 359.02, 'STOCK-0038', '2026-01-12 16:10:00'),
(9000039, 9000007, 9000003, 9000007, NULL, NULL, NULL, 'receipt', 20, 405.42, 'STOCK-0039', '2026-01-13 16:10:00'),
(9000040, 9000008, 9000003, 9000008, NULL, NULL, NULL, 'receipt', 18, 417.02, 'STOCK-0040', '2026-01-13 16:10:00'),
(9000041, 9000009, 9000003, 9000009, NULL, NULL, NULL, 'receipt', 25, 463.42, 'STOCK-0041', '2026-01-14 16:10:00'),
(9000042, 9000010, 9000003, 9000010, NULL, NULL, NULL, 'receipt', 25, 475.02, 'STOCK-0042', '2026-01-14 16:10:00'),
(9000043, 9000011, 9000003, 9000011, NULL, NULL, NULL, 'receipt', 20, 173.42, 'STOCK-0043', '2026-01-15 16:10:00'),
(9000044, 9000012, 9000003, 9000012, NULL, NULL, NULL, 'receipt', 20, 185.02, 'STOCK-0044', '2026-01-15 16:10:00'),
(9000045, 9000013, 9000003, 9000013, NULL, NULL, NULL, 'receipt', 25, 231.42, 'STOCK-0045', '2026-01-16 16:10:00'),
(9000046, 9000014, 9000003, 9000014, NULL, NULL, NULL, 'receipt', 25, 243.02, 'STOCK-0046', '2026-01-16 16:10:00'),
(9000047, 9000015, 9000003, 9000015, NULL, NULL, NULL, 'receipt', 20, 289.42, 'STOCK-0047', '2026-01-17 16:10:00'),
(9000048, 9000016, 9000003, 9000016, NULL, NULL, NULL, 'receipt', 20, 301.02, 'STOCK-0048', '2026-01-17 16:10:00'),
(9000049, 9000001, 9000003, NULL, 9000021, NULL, NULL, 'dispatch', -3, 231.42, 'STOCK-0049', '2026-02-07 08:05:00'),
(9000050, 9000002, 9000003, NULL, 9000022, NULL, NULL, 'dispatch', -4, 243.02, 'STOCK-0050', '2026-02-07 08:05:00'),
(9000051, 9000003, 9000003, NULL, 9000023, NULL, NULL, 'dispatch', -4, 289.42, 'STOCK-0051', '2026-02-14 08:05:00'),
(9000052, 9000004, 9000003, NULL, 9000024, NULL, NULL, 'dispatch', -1, 301.02, 'STOCK-0052', '2026-02-14 08:05:00'),
(9000053, 9000005, 9000003, NULL, 9000025, NULL, NULL, 'dispatch', -1, 347.42, 'STOCK-0053', '2026-02-21 08:05:00'),
(9000054, 9000006, 9000003, NULL, 9000026, NULL, NULL, 'dispatch', -2, 359.02, 'STOCK-0054', '2026-02-21 08:05:00'),
(9000055, 9000007, 9000003, NULL, 9000027, NULL, NULL, 'dispatch', -2, 405.42, 'STOCK-0055', '2026-03-07 08:05:00'),
(9000056, 9000008, 9000003, NULL, 9000028, NULL, NULL, 'dispatch', -3, 417.02, 'STOCK-0056', '2026-03-07 08:05:00'),
(9000057, 9000009, 9000003, NULL, 9000029, NULL, NULL, 'dispatch', -3, 463.42, 'STOCK-0057', '2026-03-14 08:05:00'),
(9000058, 9000010, 9000003, NULL, 9000030, NULL, NULL, 'dispatch', -4, 475.02, 'STOCK-0058', '2026-03-14 08:05:00'),
(9000059, 9000011, 9000003, NULL, 9000031, NULL, NULL, 'dispatch', -4, 173.42, 'STOCK-0059', '2026-03-21 08:05:00'),
(9000060, 9000012, 9000003, NULL, 9000032, NULL, NULL, 'dispatch', -1, 185.02, 'STOCK-0060', '2026-03-21 08:05:00'),
(9000061, 9000013, 9000003, NULL, 9000033, NULL, NULL, 'dispatch', -1, 231.42, 'STOCK-0061', '2026-04-07 08:05:00'),
(9000062, 9000014, 9000003, NULL, 9000034, NULL, NULL, 'dispatch', -2, 243.02, 'STOCK-0062', '2026-04-07 08:05:00'),
(9000063, 9000015, 9000003, NULL, 9000035, NULL, NULL, 'dispatch', -2, 289.42, 'STOCK-0063', '2026-04-14 08:05:00'),
(9000064, 9000016, 9000003, NULL, 9000036, NULL, NULL, 'dispatch', -3, 301.02, 'STOCK-0064', '2026-04-14 08:05:00'),
(9000065, 9000017, 9000003, NULL, 9000037, NULL, NULL, 'dispatch', -3, 347.42, 'STOCK-0065', '2026-04-21 08:05:00'),
(9000066, 9000018, 9000003, NULL, 9000038, NULL, NULL, 'dispatch', -4, 359.02, 'STOCK-0066', '2026-04-21 08:05:00'),
(9000067, 9000019, 9000003, NULL, 9000039, NULL, NULL, 'dispatch', -4, 405.42, 'STOCK-0067', '2026-05-07 08:05:00'),
(9000068, 9000020, 9000003, NULL, 9000040, NULL, NULL, 'dispatch', -1, 417.02, 'STOCK-0068', '2026-05-07 08:05:00'),
(9000069, 9000021, 9000003, NULL, 9000041, NULL, NULL, 'dispatch', -1, 463.42, 'STOCK-0069', '2026-05-14 08:05:00'),
(9000070, 9000022, 9000003, NULL, 9000042, NULL, NULL, 'dispatch', -2, 475.02, 'STOCK-0070', '2026-05-14 08:05:00'),
(9000071, 9000023, 9000003, NULL, 9000043, NULL, NULL, 'dispatch', -2, 173.42, 'STOCK-0071', '2026-05-21 08:05:00'),
(9000072, 9000024, 9000003, NULL, 9000044, NULL, NULL, 'dispatch', -3, 185.02, 'STOCK-0072', '2026-05-21 08:05:00'),
(9000073, 9000025, 9000003, NULL, 9000045, NULL, NULL, 'dispatch', -3, 231.42, 'STOCK-0073', '2026-06-07 08:05:00'),
(9000074, 9000026, 9000003, NULL, 9000046, NULL, NULL, 'dispatch', -4, 243.02, 'STOCK-0074', '2026-06-07 08:05:00'),
(9000075, 9000027, 9000003, NULL, 9000047, NULL, NULL, 'dispatch', -4, 289.42, 'STOCK-0075', '2026-06-14 08:05:00'),
(9000076, 9000028, 9000003, NULL, 9000048, NULL, NULL, 'dispatch', -1, 301.02, 'STOCK-0076', '2026-06-14 08:05:00'),
(9000077, 9000029, 9000003, NULL, 9000049, NULL, NULL, 'dispatch', -1, 347.42, 'STOCK-0077', '2026-06-21 08:05:00'),
(9000078, 9000030, 9000003, NULL, 9000050, NULL, NULL, 'dispatch', -2, 359.02, 'STOCK-0078', '2026-06-21 08:05:00'),
(9000079, 9000031, 9000003, NULL, 9000051, NULL, NULL, 'dispatch', -2, 405.42, 'STOCK-0079', '2026-07-07 08:05:00'),
(9000080, 9000032, 9000003, NULL, 9000052, NULL, NULL, 'dispatch', -3, 417.02, 'STOCK-0080', '2026-07-07 08:05:00'),
(9000081, 9000001, 9000003, NULL, 9000053, NULL, NULL, 'dispatch', -3, 231.42, 'STOCK-0081', '2026-07-14 08:05:00'),
(9000082, 9000002, 9000003, NULL, 9000054, NULL, NULL, 'dispatch', -4, 243.02, 'STOCK-0082', '2026-07-14 08:05:00'),
(9000083, 9000003, 9000003, NULL, 9000055, NULL, NULL, 'dispatch', -4, 289.42, 'STOCK-0083', '2026-07-21 08:05:00'),
(9000084, 9000004, 9000003, NULL, 9000056, NULL, NULL, 'dispatch', -1, 301.02, 'STOCK-0084', '2026-07-21 08:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `stock_reservations`
--

CREATE TABLE `stock_reservations` (
  `stock_reservation_id` bigint(20) NOT NULL,
  `product_variant_id` bigint(20) NOT NULL,
  `sales_order_item_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'record creator',
  `quantity_reserved` int(11) NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_reservations`
--

INSERT INTO `stock_reservations` (`stock_reservation_id`, `product_variant_id`, `sales_order_item_id`, `user_id`, `quantity_reserved`, `date_updated`) VALUES
(9000001, 9000005, 9000037, 9000003, 1, '2026-08-05 10:10:00'),
(9000002, 9000006, 9000038, 9000003, 2, '2026-08-05 10:10:00'),
(9000003, 9000007, 9000039, 9000003, 2, '2026-08-12 10:10:00'),
(9000004, 9000008, 9000040, 9000003, 3, '2026-08-12 10:10:00'),
(9000005, 9000009, 9000041, 9000003, 3, '2026-08-19 10:10:00'),
(9000006, 9000010, 9000042, 9000003, 4, '2026-08-19 10:10:00'),
(9000007, 9000011, 9000043, 9000003, 4, '2026-09-05 10:10:00'),
(9000008, 9000012, 9000044, 9000003, 1, '2026-09-05 10:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL DEFAULT 1,
  `supplier_code` varchar(30) NOT NULL,
  `supplier_name` varchar(150) NOT NULL,
  `contact_name` varchar(120) DEFAULT NULL,
  `email_address` varchar(150) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `status_id`, `supplier_code`, `supplier_name`, `contact_name`, `email_address`, `phone_number`, `address`) VALUES
(9000001, 1, 'SUP-0001', 'Mindanao Apparel Supply', 'Supplier Contact 1', 'supplier1@tbj.test', NULL, 'Business Address 1, Cagayan de Oro City, Philippines'),
(9000002, 1, 'SUP-0002', 'Northern Style Clothing', 'Supplier Contact 2', 'supplier2@tbj.test', NULL, 'Business Address 2, Cagayan de Oro City, Philippines'),
(9000003, 1, 'SUP-0003', 'Metro Readywear Trading', 'Supplier Contact 3', 'supplier3@tbj.test', NULL, 'Business Address 3, Cagayan de Oro City, Philippines'),
(9000004, 1, 'SUP-0004', 'Summit Clothing Distribution', 'Supplier Contact 4', 'supplier4@tbj.test', NULL, 'Business Address 4, Cagayan de Oro City, Philippines'),
(9000005, 1, 'SUP-0005', 'Coastal Apparel Wholesale', 'Supplier Contact 5', 'supplier5@tbj.test', NULL, 'Business Address 5, Cagayan de Oro City, Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_invoices`
--

CREATE TABLE `supplier_invoices` (
  `supplier_invoice_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'recording staff member',
  `invoice_number` varchar(60) NOT NULL,
  `date_invoiced` date NOT NULL,
  `date_due` date DEFAULT NULL,
  `document_path` varchar(500) DEFAULT NULL,
  `invoice_status_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_invoices`
--

INSERT INTO `supplier_invoices` (`supplier_invoice_id`, `purchase_order_id`, `supplier_id`, `user_id`, `invoice_number`, `date_invoiced`, `date_due`, `document_path`, `invoice_status_id`) VALUES
(9000001, 9000001, 9000001, 9000003, 'INV-0001', '2026-01-11', '2026-02-10', NULL, 2),
(9000002, 9000002, 9000002, 9000003, 'INV-0002', '2026-01-12', '2026-02-11', NULL, 2),
(9000003, 9000003, 9000003, 9000003, 'INV-0003', '2026-01-13', '2026-02-12', NULL, 2),
(9000004, 9000004, 9000004, 9000003, 'INV-0004', '2026-01-14', '2026-02-13', NULL, 2),
(9000005, 9000005, 9000005, 9000003, 'INV-0005', '2026-01-15', '2026-02-14', NULL, 2),
(9000006, 9000006, 9000001, 9000003, 'INV-0006', '2026-01-16', '2026-02-15', NULL, 2),
(9000007, 9000007, 9000002, 9000003, 'INV-0007', '2026-01-17', '2026-02-16', NULL, 2),
(9000008, 9000008, 9000003, 9000003, 'INV-0008', '2026-01-18', '2026-02-17', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_invoice_items`
--

CREATE TABLE `supplier_invoice_items` (
  `supplier_invoice_item_id` bigint(20) NOT NULL,
  `supplier_invoice_id` bigint(20) NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `purchase_order_item_id` bigint(20) NOT NULL,
  `line_number` int(11) NOT NULL,
  `quantity_invoiced` int(11) NOT NULL,
  `unit_cost` decimal(14,2) NOT NULL,
  `discount_amount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `tax_id` bigint(20) NOT NULL,
  `vat_amount` decimal(14,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_invoice_items`
--

INSERT INTO `supplier_invoice_items` (`supplier_invoice_item_id`, `supplier_invoice_id`, `purchase_order_id`, `purchase_order_item_id`, `line_number`, `quantity_invoiced`, `unit_cost`, `discount_amount`, `tax_id`, `vat_amount`) VALUES
(9000001, 9000001, 9000001, 9000001, 1, 25, 231.42, 0.00, 9000001, 694.26),
(9000002, 9000001, 9000001, 9000002, 2, 25, 243.02, 0.00, 9000001, 729.06),
(9000003, 9000002, 9000002, 9000003, 1, 20, 289.42, 0.00, 9000001, 694.61),
(9000004, 9000002, 9000002, 9000004, 2, 20, 301.02, 0.00, 9000001, 722.45),
(9000005, 9000003, 9000003, 9000005, 1, 25, 347.42, 0.00, 9000002, 0.00),
(9000006, 9000003, 9000003, 9000006, 2, 25, 359.02, 0.00, 9000002, 0.00),
(9000007, 9000004, 9000004, 9000007, 1, 20, 405.42, 0.00, 9000001, 973.01),
(9000008, 9000004, 9000004, 9000008, 2, 18, 417.02, 0.00, 9000001, 900.76),
(9000009, 9000005, 9000005, 9000009, 1, 25, 463.42, 0.00, 9000001, 1390.26),
(9000010, 9000005, 9000005, 9000010, 2, 25, 475.02, 0.00, 9000001, 1425.06),
(9000011, 9000006, 9000006, 9000011, 1, 20, 173.42, 0.00, 9000002, 0.00),
(9000012, 9000006, 9000006, 9000012, 2, 20, 185.02, 0.00, 9000002, 0.00),
(9000013, 9000007, 9000007, 9000013, 1, 25, 231.42, 0.00, 9000001, 694.26),
(9000014, 9000007, 9000007, 9000014, 2, 25, 243.02, 0.00, 9000001, 729.06),
(9000015, 9000008, 9000008, 9000015, 1, 20, 289.42, 0.00, 9000001, 694.61),
(9000016, 9000008, 9000008, 9000016, 2, 20, 301.02, 0.00, 9000001, 722.45);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_items`
--

CREATE TABLE `supplier_items` (
  `supplier_item_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `product_variant_id` bigint(20) NOT NULL,
  `supplier_stock_keeping_unit` varchar(60) DEFAULT NULL,
  `quoted_unit_cost` decimal(14,2) NOT NULL,
  `lead_time_days` int(11) NOT NULL,
  `minimum_order_quantity` int(11) NOT NULL,
  `order_quantity_multiple` int(11) NOT NULL,
  `date_quoted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_items`
--

INSERT INTO `supplier_items` (`supplier_item_id`, `supplier_id`, `product_variant_id`, `supplier_stock_keeping_unit`, `quoted_unit_cost`, `lead_time_days`, `minimum_order_quantity`, `order_quantity_multiple`, `date_quoted`) VALUES
(9000001, 9000001, 9000001, 'VENDOR-SKU-0001', 231.42, 4, 10, 5, '2026-01-02 09:00:00'),
(9000002, 9000001, 9000002, 'VENDOR-SKU-0002', 243.02, 5, 10, 5, '2026-01-02 09:00:00'),
(9000003, 9000002, 9000003, 'VENDOR-SKU-0003', 289.42, 6, 10, 5, '2026-01-02 09:00:00'),
(9000004, 9000002, 9000004, 'VENDOR-SKU-0004', 301.02, 7, 10, 5, '2026-01-02 09:00:00'),
(9000005, 9000003, 9000005, 'VENDOR-SKU-0005', 347.42, 3, 10, 5, '2026-01-02 09:00:00'),
(9000006, 9000003, 9000006, 'VENDOR-SKU-0006', 359.02, 4, 10, 5, '2026-01-02 09:00:00'),
(9000007, 9000004, 9000007, 'VENDOR-SKU-0007', 405.42, 5, 10, 5, '2026-01-02 09:00:00'),
(9000008, 9000004, 9000008, 'VENDOR-SKU-0008', 417.02, 6, 10, 5, '2026-01-02 09:00:00'),
(9000009, 9000005, 9000009, 'VENDOR-SKU-0009', 463.42, 7, 10, 5, '2026-01-02 09:00:00'),
(9000010, 9000005, 9000010, 'VENDOR-SKU-0010', 475.02, 3, 10, 5, '2026-01-02 09:00:00'),
(9000011, 9000001, 9000011, 'VENDOR-SKU-0011', 173.42, 4, 10, 5, '2026-01-02 09:00:00'),
(9000012, 9000001, 9000012, 'VENDOR-SKU-0012', 185.02, 5, 10, 5, '2026-01-02 09:00:00'),
(9000013, 9000002, 9000013, 'VENDOR-SKU-0013', 231.42, 6, 10, 5, '2026-01-02 09:00:00'),
(9000014, 9000002, 9000014, 'VENDOR-SKU-0014', 243.02, 7, 10, 5, '2026-01-02 09:00:00'),
(9000015, 9000003, 9000015, 'VENDOR-SKU-0015', 289.42, 3, 10, 5, '2026-01-02 09:00:00'),
(9000016, 9000003, 9000016, 'VENDOR-SKU-0016', 301.02, 4, 10, 5, '2026-01-02 09:00:00'),
(9000017, 9000004, 9000017, 'VENDOR-SKU-0017', 347.42, 5, 10, 5, '2026-01-02 09:00:00'),
(9000018, 9000004, 9000018, 'VENDOR-SKU-0018', 359.02, 6, 10, 5, '2026-01-02 09:00:00'),
(9000019, 9000005, 9000019, 'VENDOR-SKU-0019', 405.42, 7, 10, 5, '2026-01-02 09:00:00'),
(9000020, 9000005, 9000020, 'VENDOR-SKU-0020', 417.02, 3, 10, 5, '2026-01-02 09:00:00'),
(9000021, 9000001, 9000021, 'VENDOR-SKU-0021', 463.42, 4, 10, 5, '2026-01-02 09:00:00'),
(9000022, 9000001, 9000022, 'VENDOR-SKU-0022', 475.02, 5, 10, 5, '2026-01-02 09:00:00'),
(9000023, 9000002, 9000023, 'VENDOR-SKU-0023', 173.42, 6, 10, 5, '2026-01-02 09:00:00'),
(9000024, 9000002, 9000024, 'VENDOR-SKU-0024', 185.02, 7, 10, 5, '2026-01-02 09:00:00'),
(9000025, 9000003, 9000025, 'VENDOR-SKU-0025', 231.42, 3, 10, 5, '2026-01-02 09:00:00'),
(9000026, 9000003, 9000026, 'VENDOR-SKU-0026', 243.02, 4, 10, 5, '2026-01-02 09:00:00'),
(9000027, 9000004, 9000027, 'VENDOR-SKU-0027', 289.42, 5, 10, 5, '2026-01-02 09:00:00'),
(9000028, 9000004, 9000028, 'VENDOR-SKU-0028', 301.02, 6, 10, 5, '2026-01-02 09:00:00'),
(9000029, 9000005, 9000029, 'VENDOR-SKU-0029', 347.42, 7, 10, 5, '2026-01-02 09:00:00'),
(9000030, 9000005, 9000030, 'VENDOR-SKU-0030', 359.02, 3, 10, 5, '2026-01-02 09:00:00'),
(9000031, 9000001, 9000031, 'VENDOR-SKU-0031', 405.42, 4, 10, 5, '2026-01-02 09:00:00'),
(9000032, 9000001, 9000032, 'VENDOR-SKU-0032', 417.02, 5, 10, 5, '2026-01-02 09:00:00'),
(9000033, 9000002, 9000001, 'ALT-SKU-0001', 241.42, 7, 10, 5, '2026-01-02 09:00:00'),
(9000034, 9000002, 9000002, 'ALT-SKU-0002', 253.02, 7, 10, 5, '2026-01-02 09:00:00'),
(9000035, 9000003, 9000003, 'ALT-SKU-0003', 299.42, 7, 10, 5, '2026-01-02 09:00:00'),
(9000036, 9000003, 9000004, 'ALT-SKU-0004', 311.02, 7, 10, 5, '2026-01-02 09:00:00'),
(9000037, 9000004, 9000005, 'ALT-SKU-0005', 357.42, 7, 10, 5, '2026-01-02 09:00:00'),
(9000038, 9000004, 9000006, 'ALT-SKU-0006', 369.02, 7, 10, 5, '2026-01-02 09:00:00'),
(9000039, 9000005, 9000007, 'ALT-SKU-0007', 415.42, 7, 10, 5, '2026-01-02 09:00:00'),
(9000040, 9000005, 9000008, 'ALT-SKU-0008', 427.02, 7, 10, 5, '2026-01-02 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `tax_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `tax_code` varchar(40) NOT NULL,
  `tax_name` varchar(100) NOT NULL,
  `tax_treatment` enum('vatable','zero_rated','exempt','not_applicable') NOT NULL,
  `vat_rate` decimal(7,4) NOT NULL,
  `date_effective_start` date NOT NULL,
  `date_effective_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`tax_id`, `status_id`, `tax_code`, `tax_name`, `tax_treatment`, `vat_rate`, `date_effective_start`, `date_effective_end`) VALUES
(9000001, 1, 'VAT12-0001', 'Sample VAT 12 percent', 'vatable', 0.1200, '2026-01-01', NULL),
(9000002, 1, 'EXEMPT-0001', 'Sample VAT exempt', 'exempt', 0.0000, '2026-01-01', NULL),
(9000003, 1, 'ZERO-0001', 'Sample zero rated', 'zero_rated', 0.0000, '2026-01-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracking_events`
--

CREATE TABLE `tracking_events` (
  `tracking_event_id` bigint(20) NOT NULL,
  `delivery_tracking_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'recording staff member',
  `event_reference` varchar(100) NOT NULL,
  `delivery_status_id` bigint(20) NOT NULL,
  `date_event` datetime NOT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `proof_document_path` varchar(500) DEFAULT NULL,
  `recipient_name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracking_events`
--

INSERT INTO `tracking_events` (`tracking_event_id`, `delivery_tracking_id`, `user_id`, `event_reference`, `delivery_status_id`, `date_event`, `notes`, `proof_document_path`, `recipient_name`) VALUES
(9000001, 9000001, 9000007, 'EVENT-0001', 1, '2026-01-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000002, 9000001, 9000007, 'EVENT-0002', 2, '2026-01-08 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000003, 9000001, 9000007, 'EVENT-0003', 3, '2026-01-09 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000004, 9000001, 9000007, 'EVENT-0004', 4, '2026-01-09 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000005, 9000001, 9000007, 'EVENT-0005', 5, '2026-01-10 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000006, 9000001, 9000007, 'EVENT-0006', 7, '2026-01-10 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0001.pdf', 'Receiving Staff'),
(9000007, 9000002, 9000008, 'EVENT-0007', 1, '2026-01-09 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000008, 9000002, 9000008, 'EVENT-0008', 2, '2026-01-09 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000009, 9000002, 9000008, 'EVENT-0009', 3, '2026-01-10 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000010, 9000002, 9000008, 'EVENT-0010', 4, '2026-01-10 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000011, 9000002, 9000008, 'EVENT-0011', 5, '2026-01-11 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000012, 9000002, 9000008, 'EVENT-0012', 7, '2026-01-11 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0002.pdf', 'Receiving Staff'),
(9000013, 9000003, 9000009, 'EVENT-0013', 1, '2026-01-10 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000014, 9000003, 9000009, 'EVENT-0014', 2, '2026-01-10 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000015, 9000003, 9000009, 'EVENT-0015', 3, '2026-01-11 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000016, 9000003, 9000009, 'EVENT-0016', 4, '2026-01-11 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000017, 9000003, 9000009, 'EVENT-0017', 5, '2026-01-12 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000018, 9000003, 9000009, 'EVENT-0018', 7, '2026-01-12 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0003.pdf', 'Receiving Staff'),
(9000019, 9000004, 9000006, 'EVENT-0019', 1, '2026-01-11 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000020, 9000004, 9000006, 'EVENT-0020', 2, '2026-01-11 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000021, 9000004, 9000006, 'EVENT-0021', 3, '2026-01-12 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000022, 9000004, 9000006, 'EVENT-0022', 4, '2026-01-12 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000023, 9000004, 9000006, 'EVENT-0023', 5, '2026-01-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000024, 9000004, 9000006, 'EVENT-0024', 7, '2026-01-13 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0004.pdf', 'Receiving Staff'),
(9000025, 9000005, 9000007, 'EVENT-0025', 1, '2026-01-12 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000026, 9000005, 9000007, 'EVENT-0026', 2, '2026-01-12 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000027, 9000005, 9000007, 'EVENT-0027', 3, '2026-01-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000028, 9000005, 9000007, 'EVENT-0028', 4, '2026-01-13 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000029, 9000005, 9000007, 'EVENT-0029', 5, '2026-01-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000030, 9000005, 9000007, 'EVENT-0030', 7, '2026-01-14 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0005.pdf', 'Receiving Staff'),
(9000031, 9000006, 9000008, 'EVENT-0031', 1, '2026-01-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000032, 9000006, 9000008, 'EVENT-0032', 2, '2026-01-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000033, 9000006, 9000008, 'EVENT-0033', 3, '2026-01-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000034, 9000006, 9000008, 'EVENT-0034', 4, '2026-01-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000035, 9000006, 9000008, 'EVENT-0035', 5, '2026-01-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000036, 9000006, 9000008, 'EVENT-0036', 7, '2026-01-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0006.pdf', 'Receiving Staff'),
(9000037, 9000007, 9000009, 'EVENT-0037', 1, '2026-01-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000038, 9000007, 9000009, 'EVENT-0038', 2, '2026-01-14 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000039, 9000007, 9000009, 'EVENT-0039', 3, '2026-01-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000040, 9000007, 9000009, 'EVENT-0040', 4, '2026-01-15 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000041, 9000007, 9000009, 'EVENT-0041', 5, '2026-01-16 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000042, 9000007, 9000009, 'EVENT-0042', 7, '2026-01-16 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0007.pdf', 'Receiving Staff'),
(9000043, 9000008, 9000006, 'EVENT-0043', 1, '2026-01-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000044, 9000008, 9000006, 'EVENT-0044', 2, '2026-01-15 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000045, 9000008, 9000006, 'EVENT-0045', 3, '2026-01-16 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000046, 9000008, 9000006, 'EVENT-0046', 4, '2026-01-16 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000047, 9000008, 9000006, 'EVENT-0047', 5, '2026-01-17 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000048, 9000008, 9000006, 'EVENT-0048', 7, '2026-01-17 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0008.pdf', 'Receiving Staff'),
(9000049, 9000009, 9000007, 'EVENT-0049', 1, '2026-01-16 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000050, 9000009, 9000007, 'EVENT-0050', 2, '2026-01-16 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000051, 9000009, 9000007, 'EVENT-0051', 3, '2026-01-17 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000052, 9000009, 9000007, 'EVENT-0052', 4, '2026-01-17 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000053, 9000010, 9000008, 'EVENT-0053', 1, '2026-01-17 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000054, 9000010, 9000008, 'EVENT-0054', 2, '2026-01-17 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000055, 9000010, 9000008, 'EVENT-0055', 3, '2026-01-18 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000056, 9000010, 9000008, 'EVENT-0056', 4, '2026-01-18 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000057, 9000011, 9000009, 'EVENT-0057', 1, '2026-02-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000058, 9000011, 9000009, 'EVENT-0058', 2, '2026-02-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000059, 9000011, 9000009, 'EVENT-0059', 3, '2026-02-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000060, 9000011, 9000009, 'EVENT-0060', 4, '2026-02-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000061, 9000011, 9000009, 'EVENT-0061', 5, '2026-02-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000062, 9000011, 9000009, 'EVENT-0062', 7, '2026-02-08 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0011.pdf', 'Alex Customer'),
(9000063, 9000012, 9000006, 'EVENT-0063', 1, '2026-02-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000064, 9000012, 9000006, 'EVENT-0064', 2, '2026-02-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000065, 9000012, 9000006, 'EVENT-0065', 3, '2026-02-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000066, 9000012, 9000006, 'EVENT-0066', 4, '2026-02-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000067, 9000012, 9000006, 'EVENT-0067', 5, '2026-02-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000068, 9000012, 9000006, 'EVENT-0068', 7, '2026-02-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0012.pdf', 'Bea Customer'),
(9000069, 9000013, 9000007, 'EVENT-0069', 1, '2026-02-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000070, 9000013, 9000007, 'EVENT-0070', 2, '2026-02-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000071, 9000013, 9000007, 'EVENT-0071', 3, '2026-02-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000072, 9000013, 9000007, 'EVENT-0072', 4, '2026-02-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000073, 9000013, 9000007, 'EVENT-0073', 5, '2026-02-22 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000074, 9000013, 9000007, 'EVENT-0074', 7, '2026-02-22 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0013.pdf', 'Carlo Customer'),
(9000075, 9000014, 9000008, 'EVENT-0075', 1, '2026-03-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000076, 9000014, 9000008, 'EVENT-0076', 2, '2026-03-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000077, 9000014, 9000008, 'EVENT-0077', 3, '2026-03-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000078, 9000014, 9000008, 'EVENT-0078', 4, '2026-03-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000079, 9000014, 9000008, 'EVENT-0079', 5, '2026-03-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000080, 9000014, 9000008, 'EVENT-0080', 7, '2026-03-08 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0014.pdf', 'Dana Customer'),
(9000081, 9000015, 9000009, 'EVENT-0081', 1, '2026-03-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000082, 9000015, 9000009, 'EVENT-0082', 2, '2026-03-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000083, 9000015, 9000009, 'EVENT-0083', 3, '2026-03-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000084, 9000015, 9000009, 'EVENT-0084', 4, '2026-03-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000085, 9000015, 9000009, 'EVENT-0085', 5, '2026-03-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000086, 9000015, 9000009, 'EVENT-0086', 7, '2026-03-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0015.pdf', 'Eli Customer'),
(9000087, 9000016, 9000006, 'EVENT-0087', 1, '2026-03-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000088, 9000016, 9000006, 'EVENT-0088', 2, '2026-03-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000089, 9000016, 9000006, 'EVENT-0089', 3, '2026-03-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000090, 9000016, 9000006, 'EVENT-0090', 4, '2026-03-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000091, 9000016, 9000006, 'EVENT-0091', 5, '2026-03-22 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000092, 9000016, 9000006, 'EVENT-0092', 7, '2026-03-22 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0016.pdf', 'Faith Customer'),
(9000093, 9000017, 9000007, 'EVENT-0093', 1, '2026-04-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000094, 9000017, 9000007, 'EVENT-0094', 2, '2026-04-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000095, 9000017, 9000007, 'EVENT-0095', 3, '2026-04-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000096, 9000017, 9000007, 'EVENT-0096', 4, '2026-04-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000097, 9000017, 9000007, 'EVENT-0097', 5, '2026-04-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000098, 9000017, 9000007, 'EVENT-0098', 7, '2026-04-08 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0017.pdf', 'Gio Customer'),
(9000099, 9000018, 9000008, 'EVENT-0099', 1, '2026-04-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000100, 9000018, 9000008, 'EVENT-0100', 2, '2026-04-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000101, 9000018, 9000008, 'EVENT-0101', 3, '2026-04-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000102, 9000018, 9000008, 'EVENT-0102', 4, '2026-04-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000103, 9000018, 9000008, 'EVENT-0103', 5, '2026-04-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000104, 9000018, 9000008, 'EVENT-0104', 7, '2026-04-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0018.pdf', 'Hana Customer'),
(9000105, 9000019, 9000009, 'EVENT-0105', 1, '2026-04-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000106, 9000019, 9000009, 'EVENT-0106', 2, '2026-04-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000107, 9000019, 9000009, 'EVENT-0107', 3, '2026-04-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000108, 9000019, 9000009, 'EVENT-0108', 4, '2026-04-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000109, 9000019, 9000009, 'EVENT-0109', 5, '2026-04-22 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000110, 9000019, 9000009, 'EVENT-0110', 7, '2026-04-22 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0019.pdf', 'Ivan Customer'),
(9000111, 9000020, 9000006, 'EVENT-0111', 1, '2026-05-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000112, 9000020, 9000006, 'EVENT-0112', 2, '2026-05-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000113, 9000020, 9000006, 'EVENT-0113', 3, '2026-05-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000114, 9000020, 9000006, 'EVENT-0114', 4, '2026-05-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000115, 9000020, 9000006, 'EVENT-0115', 5, '2026-05-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000116, 9000020, 9000006, 'EVENT-0116', 7, '2026-05-08 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0020.pdf', 'Jade Customer'),
(9000117, 9000021, 9000007, 'EVENT-0117', 1, '2026-05-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000118, 9000021, 9000007, 'EVENT-0118', 2, '2026-05-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000119, 9000021, 9000007, 'EVENT-0119', 3, '2026-05-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000120, 9000021, 9000007, 'EVENT-0120', 4, '2026-05-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000121, 9000021, 9000007, 'EVENT-0121', 5, '2026-05-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000122, 9000021, 9000007, 'EVENT-0122', 7, '2026-05-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0021.pdf', 'Kai Customer'),
(9000123, 9000022, 9000008, 'EVENT-0123', 1, '2026-05-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000124, 9000022, 9000008, 'EVENT-0124', 2, '2026-05-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000125, 9000022, 9000008, 'EVENT-0125', 3, '2026-05-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000126, 9000022, 9000008, 'EVENT-0126', 4, '2026-05-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000127, 9000022, 9000008, 'EVENT-0127', 5, '2026-05-22 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000128, 9000022, 9000008, 'EVENT-0128', 7, '2026-05-22 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0022.pdf', 'Lara Customer'),
(9000129, 9000023, 9000009, 'EVENT-0129', 1, '2026-06-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000130, 9000023, 9000009, 'EVENT-0130', 2, '2026-06-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000131, 9000023, 9000009, 'EVENT-0131', 3, '2026-06-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000132, 9000023, 9000009, 'EVENT-0132', 4, '2026-06-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000133, 9000023, 9000009, 'EVENT-0133', 5, '2026-06-08 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000134, 9000023, 9000009, 'EVENT-0134', 7, '2026-06-08 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0023.pdf', 'Mika Customer'),
(9000135, 9000024, 9000006, 'EVENT-0135', 1, '2026-06-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000136, 9000024, 9000006, 'EVENT-0136', 2, '2026-06-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000137, 9000024, 9000006, 'EVENT-0137', 3, '2026-06-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000138, 9000024, 9000006, 'EVENT-0138', 4, '2026-06-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000139, 9000024, 9000006, 'EVENT-0139', 5, '2026-06-15 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000140, 9000024, 9000006, 'EVENT-0140', 7, '2026-06-15 15:00:00', 'Synthetic sample tracking event', 'proof/POD-0024.pdf', 'Noah Customer'),
(9000141, 9000025, 9000007, 'EVENT-0141', 1, '2026-06-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000142, 9000025, 9000007, 'EVENT-0142', 2, '2026-06-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000143, 9000025, 9000007, 'EVENT-0143', 3, '2026-06-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000144, 9000025, 9000007, 'EVENT-0144', 4, '2026-06-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000145, 9000026, 9000008, 'EVENT-0145', 1, '2026-07-06 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000146, 9000026, 9000008, 'EVENT-0146', 2, '2026-07-06 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000147, 9000026, 9000008, 'EVENT-0147', 3, '2026-07-07 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000148, 9000026, 9000008, 'EVENT-0148', 4, '2026-07-07 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000149, 9000027, 9000009, 'EVENT-0149', 1, '2026-07-13 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000150, 9000027, 9000009, 'EVENT-0150', 2, '2026-07-13 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000151, 9000027, 9000009, 'EVENT-0151', 3, '2026-07-14 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000152, 9000027, 9000009, 'EVENT-0152', 4, '2026-07-14 14:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000153, 9000028, 9000006, 'EVENT-0153', 1, '2026-07-20 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000154, 9000028, 9000006, 'EVENT-0154', 2, '2026-07-20 09:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000155, 9000028, 9000006, 'EVENT-0155', 3, '2026-07-21 08:00:00', 'Synthetic sample tracking event', NULL, NULL),
(9000156, 9000028, 9000006, 'EVENT-0156', 4, '2026-07-21 14:00:00', 'Synthetic sample tracking event', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `status_id` bigint(20) NOT NULL DEFAULT 1,
  `full_name` varchar(150) NOT NULL,
  `email_address` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `date_created` date NOT NULL COMMENT 'Creation calendar date only; no time of day is stored.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `role_id`, `supplier_id`, `status_id`, `full_name`, `email_address`, `password_hash`, `date_created`) VALUES
(9000001, 1, NULL, 1, 'Owner One', 'owner@tbj.test', '$2y$12$Rl2zwSTZ3cUrewI7IPu3nOTLpoVBHhxyLw7lh/maQR8q49jjtbEjy', '2026-01-01'),
(9000002, 1, NULL, 1, 'Owner Two', 'owner2@tbj.test', '$2y$12$VFIevoJmAWHASunS8xJzHeahsVxU8p3xV0KyZhVANqKUqi/ZywPw6', '2026-01-01'),
(9000003, 6, NULL, 1, 'HR Supervisor', 'hr@tbj.test', '$2y$12$fMHb.mpDanpZFV/Tlhiu/OYtvJ0fGEa72Z6TL6jdkdBtell7YtsIq', '2026-01-01'),
(9000004, 6, NULL, 1, 'HR Sales Coordinator', 'hr.sales@tbj.test', '$2y$12$RJDyIzMmTogy7fCPI0VEVeR8estyWORs6slOkpurmeFutPYtY3K/a', '2026-01-01'),
(9000005, 6, NULL, 1, 'HR Operations Coordinator', 'hr.operations@tbj.test', '$2y$12$fMNyNQGUQekKJvPqfblgyupOHQou1JOB8kPTMU1QI3m4/brdWV.Da', '2026-01-01'),
(9000006, 3, NULL, 1, 'Staff 1', 'staff1@tbj.test', '$2y$12$TkSnQLfmAoDN98nM.MKamexGKtrnmZs1fO68hua7AYWXrP6SuZR8y', '2026-01-01'),
(9000007, 3, NULL, 1, 'Staff 2', 'staff2@tbj.test', '$2y$12$Kn.A3dgk0SbCaNuDP4RbA.Ail1Xnv7OFE0RRH8APjpz3LV6Y5EdgC', '2026-01-01'),
(9000008, 3, NULL, 1, 'Staff 3', 'staff3@tbj.test', '$2y$12$OFnDi8gAGezHGIYlLxEpXeum4ds.QiiuoTGwPUDfUv5JNq3lmxmNe', '2026-01-01'),
(9000009, 3, NULL, 1, 'Staff 4', 'staff4@tbj.test', '$2y$12$xTfMsN4sfKyzdTutP6/CyeqCSW6V1l92NrsS3umvT0b6I4okpAdu6', '2026-01-01'),
(9000010, 5, 9000001, 1, 'Supplier User 1', 'vendor1@tbj.test', '$2y$12$UmHdOrv881vI39zQvDW8eOUM.KKLvnOJqCgbIqOWxU40QfERAWvvG', '2026-01-01'),
(9000011, 5, 9000002, 1, 'Supplier User 2', 'vendor2@tbj.test', '$2y$12$1Qd1.6F.Pm19u3KEdCKP1uVBfrtWKG4.McP79Bw5qoaMK27MiZhD6', '2026-01-01'),
(9000012, 5, 9000003, 1, 'Supplier User 3', 'vendor3@tbj.test', '$2y$12$Tcx8R0M0zkXiv8DcVVulpOuOJwNZrMOudg07.I.ArC3TBxZ7XfSUK', '2026-01-01'),
(9000013, 5, 9000004, 1, 'Supplier User 4', 'vendor4@tbj.test', '$2y$12$4zn/7djSFw.4QG26nlta3O.n2l.ZAoH6TnWJ5NFJFmP/5FKE78kn6', '2026-01-01'),
(9000014, 5, 9000005, 1, 'Supplier User 5', 'vendor5@tbj.test', '$2y$12$8SDaDWqU58z1JfJuidKvcu/T9bTBu6kXiJnSKU56LxWFeJpGfEnCq', '2026-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval_statuses`
--
ALTER TABLE `approval_statuses`
  ADD PRIMARY KEY (`approval_status_id`),
  ADD UNIQUE KEY `uq_t41_01` (`status_code`);
-- --------------------------------------------------------
-- Relationships and primary keys added from the TBJ Garments ERD
-- --------------------------------------------------------
-- Primary keys (the original dump only defined the key for approval_statuses)
ALTER TABLE `audit_logs` ADD PRIMARY KEY (`audit_log_id`);
ALTER TABLE `carriers` ADD PRIMARY KEY (`carrier_id`);
ALTER TABLE `categories` ADD PRIMARY KEY (`category_id`);
ALTER TABLE `customers` ADD PRIMARY KEY (`customer_id`);
ALTER TABLE `deliveries` ADD PRIMARY KEY (`delivery_id`);
ALTER TABLE `delivery_items` ADD PRIMARY KEY (`delivery_item_id`);
ALTER TABLE `delivery_statuses` ADD PRIMARY KEY (`delivery_status_id`);
ALTER TABLE `delivery_tracking` ADD PRIMARY KEY (`delivery_tracking_id`);
ALTER TABLE `demand_forecasts` ADD PRIMARY KEY (`demand_forecast_id`);
ALTER TABLE `discounts` ADD PRIMARY KEY (`discount_id`);
ALTER TABLE `discount_types` ADD PRIMARY KEY (`discount_type_id`);
ALTER TABLE `forecast_inputs` ADD PRIMARY KEY (`forecast_run_id`, `product_variant_id`);
ALTER TABLE `forecast_runs` ADD PRIMARY KEY (`forecast_run_id`);
ALTER TABLE `forecast_statuses` ADD PRIMARY KEY (`forecast_status_id`);
ALTER TABLE `goods_receipts` ADD PRIMARY KEY (`goods_receipt_id`);
ALTER TABLE `goods_receipt_items` ADD PRIMARY KEY (`goods_receipt_item_id`);
ALTER TABLE `inspection_attachments` ADD PRIMARY KEY (`inspection_attachment_id`);
ALTER TABLE `invoice_receipt_allocations` ADD PRIMARY KEY (`invoice_receipt_allocation_id`);
ALTER TABLE `invoice_statuses` ADD PRIMARY KEY (`invoice_status_id`);
ALTER TABLE `order_statuses` ADD PRIMARY KEY (`order_status_id`);
ALTER TABLE `payments` ADD PRIMARY KEY (`payment_id`);
ALTER TABLE `payment_methods` ADD PRIMARY KEY (`payment_method_id`);
ALTER TABLE `products` ADD PRIMARY KEY (`product_id`);
ALTER TABLE `product_variants` ADD PRIMARY KEY (`product_variant_id`);
ALTER TABLE `purchase_orders` ADD PRIMARY KEY (`purchase_order_id`);
ALTER TABLE `purchase_order_acknowledgments` ADD PRIMARY KEY (`purchase_order_id`);
ALTER TABLE `purchase_order_approvals` ADD PRIMARY KEY (`purchase_order_approval_id`);
ALTER TABLE `purchase_order_items` ADD PRIMARY KEY (`purchase_order_item_id`);
ALTER TABLE `purchase_order_receipt_approvals` ADD PRIMARY KEY (`receipt_approval_id`);
ALTER TABLE `purchase_order_statuses` ADD PRIMARY KEY (`purchase_order_status_id`);
ALTER TABLE `receipt_approval_statuses` ADD PRIMARY KEY (`receipt_approval_status_id`);
ALTER TABLE `receipt_statuses` ADD PRIMARY KEY (`receipt_status_id`);
ALTER TABLE `recommendation_statuses` ADD PRIMARY KEY (`recommendation_status_id`);
ALTER TABLE `replenishment_policies` ADD PRIMARY KEY (`replenishment_policy_id`);
ALTER TABLE `replenishment_recommendations` ADD PRIMARY KEY (`replenishment_recommendation_id`);
ALTER TABLE `replenishment_reviews` ADD PRIMARY KEY (`replenishment_recommendation_id`, `user_id`);
ALTER TABLE `roles` ADD PRIMARY KEY (`role_id`);
ALTER TABLE `sales` ADD PRIMARY KEY (`sale_id`);
ALTER TABLE `sales_orders` ADD PRIMARY KEY (`sales_order_id`);
ALTER TABLE `sales_order_discounts` ADD PRIMARY KEY (`sales_order_discount_id`);
ALTER TABLE `sales_order_items` ADD PRIMARY KEY (`sales_order_item_id`);
ALTER TABLE `sales_payments` ADD PRIMARY KEY (`sales_payment_id`);
ALTER TABLE `sale_statuses` ADD PRIMARY KEY (`sale_status_id`);
ALTER TABLE `statuses` ADD PRIMARY KEY (`status_id`);
ALTER TABLE `stock_adjustments` ADD PRIMARY KEY (`stock_adjustment_id`);
ALTER TABLE `stock_adjustment_approvals` ADD PRIMARY KEY (`stock_adjustment_approval_id`);
ALTER TABLE `stock_movements` ADD PRIMARY KEY (`stock_movement_id`);
ALTER TABLE `stock_reservations` ADD PRIMARY KEY (`stock_reservation_id`);
ALTER TABLE `suppliers` ADD PRIMARY KEY (`supplier_id`);
ALTER TABLE `supplier_invoices` ADD PRIMARY KEY (`supplier_invoice_id`);
ALTER TABLE `supplier_invoice_items` ADD PRIMARY KEY (`supplier_invoice_item_id`);
ALTER TABLE `supplier_items` ADD PRIMARY KEY (`supplier_item_id`);
ALTER TABLE `taxes` ADD PRIMARY KEY (`tax_id`);
ALTER TABLE `tracking_events` ADD PRIMARY KEY (`tracking_event_id`);
ALTER TABLE `users` ADD PRIMARY KEY (`user_id`);

-- Foreign-key relationships
ALTER TABLE `purchase_order_approvals` ADD CONSTRAINT `fk_001_purchase_order_appro` FOREIGN KEY (`approval_status_id`) REFERENCES `approval_statuses` (`approval_status_id`);
ALTER TABLE `stock_adjustment_approvals` ADD CONSTRAINT `fk_002_stock_adjustment_app` FOREIGN KEY (`approval_status_id`) REFERENCES `approval_statuses` (`approval_status_id`);
ALTER TABLE `delivery_tracking` ADD CONSTRAINT `fk_003_delivery_tracking` FOREIGN KEY (`carrier_id`) REFERENCES `carriers` (`carrier_id`);
ALTER TABLE `products` ADD CONSTRAINT `fk_004_products` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
ALTER TABLE `sales_orders` ADD CONSTRAINT `fk_005_sales_orders` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
ALTER TABLE `delivery_items` ADD CONSTRAINT `fk_006_delivery_items` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`delivery_id`);
ALTER TABLE `delivery_tracking` ADD CONSTRAINT `fk_007_delivery_tracking` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`delivery_id`);
ALTER TABLE `goods_receipt_items` ADD CONSTRAINT `fk_008_goods_receipt_items` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`delivery_id`);
ALTER TABLE `goods_receipts` ADD CONSTRAINT `fk_009_goods_receipts` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`delivery_id`);
ALTER TABLE `goods_receipt_items` ADD CONSTRAINT `fk_010_goods_receipt_items` FOREIGN KEY (`delivery_item_id`) REFERENCES `delivery_items` (`delivery_item_id`);
ALTER TABLE `stock_movements` ADD CONSTRAINT `fk_011_stock_movements` FOREIGN KEY (`delivery_item_id`) REFERENCES `delivery_items` (`delivery_item_id`);
ALTER TABLE `tracking_events` ADD CONSTRAINT `fk_012_tracking_events` FOREIGN KEY (`delivery_status_id`) REFERENCES `delivery_statuses` (`delivery_status_id`);
ALTER TABLE `tracking_events` ADD CONSTRAINT `fk_013_tracking_events` FOREIGN KEY (`delivery_tracking_id`) REFERENCES `delivery_tracking` (`delivery_tracking_id`);
ALTER TABLE `replenishment_recommendations` ADD CONSTRAINT `fk_014_replenishment_recomm` FOREIGN KEY (`demand_forecast_id`) REFERENCES `demand_forecasts` (`demand_forecast_id`);
ALTER TABLE `discounts` ADD CONSTRAINT `fk_015_discounts` FOREIGN KEY (`discount_type_id`) REFERENCES `discount_types` (`discount_type_id`);
ALTER TABLE `sales_order_discounts` ADD CONSTRAINT `fk_016_sales_order_discount` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`discount_id`);
ALTER TABLE `demand_forecasts` ADD CONSTRAINT `fk_017_demand_forecasts` FOREIGN KEY (`forecast_run_id`) REFERENCES `forecast_runs` (`forecast_run_id`);
ALTER TABLE `forecast_inputs` ADD CONSTRAINT `fk_018_forecast_inputs` FOREIGN KEY (`forecast_run_id`) REFERENCES `forecast_runs` (`forecast_run_id`);
ALTER TABLE `forecast_runs` ADD CONSTRAINT `fk_019_forecast_runs` FOREIGN KEY (`forecast_status_id`) REFERENCES `forecast_statuses` (`forecast_status_id`);
ALTER TABLE `inspection_attachments` ADD CONSTRAINT `fk_020_inspection_attachmen` FOREIGN KEY (`goods_receipt_item_id`) REFERENCES `goods_receipt_items` (`goods_receipt_item_id`);
ALTER TABLE `invoice_receipt_allocations` ADD CONSTRAINT `fk_021_invoice_receipt_allo` FOREIGN KEY (`goods_receipt_item_id`) REFERENCES `goods_receipt_items` (`goods_receipt_item_id`);
ALTER TABLE `purchase_order_receipt_approvals` ADD CONSTRAINT `fk_022_purchase_order_recei` FOREIGN KEY (`goods_receipt_item_id`) REFERENCES `goods_receipt_items` (`goods_receipt_item_id`);
ALTER TABLE `stock_movements` ADD CONSTRAINT `fk_023_stock_movements` FOREIGN KEY (`goods_receipt_item_id`) REFERENCES `goods_receipt_items` (`goods_receipt_item_id`);
ALTER TABLE `goods_receipt_items` ADD CONSTRAINT `fk_024_goods_receipt_items` FOREIGN KEY (`goods_receipt_id`) REFERENCES `goods_receipts` (`goods_receipt_id`);
ALTER TABLE `supplier_invoices` ADD CONSTRAINT `fk_025_supplier_invoices` FOREIGN KEY (`invoice_status_id`) REFERENCES `invoice_statuses` (`invoice_status_id`);
ALTER TABLE `sales_orders` ADD CONSTRAINT `fk_026_sales_orders` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`order_status_id`);
ALTER TABLE `payments` ADD CONSTRAINT `fk_027_payments` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`);
ALTER TABLE `sales_payments` ADD CONSTRAINT `fk_028_sales_payments` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`);
ALTER TABLE `payments` ADD CONSTRAINT `fk_029_payments` FOREIGN KEY (`original_payment_id`) REFERENCES `payments` (`payment_id`);
ALTER TABLE `demand_forecasts` ADD CONSTRAINT `fk_030_demand_forecasts` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`product_variant_id`);
ALTER TABLE `forecast_inputs` ADD CONSTRAINT `fk_031_forecast_inputs` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`product_variant_id`);
ALTER TABLE `purchase_order_items` ADD CONSTRAINT `fk_032_purchase_order_items` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`product_variant_id`);
ALTER TABLE `replenishment_policies` ADD CONSTRAINT `fk_033_replenishment_polici` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`product_variant_id`);
ALTER TABLE `replenishment_recommendations` ADD CONSTRAINT `fk_034_replenishment_recomm` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`product_variant_id`);
ALTER TABLE `sales_order_items` ADD CONSTRAINT `fk_035_sales_order_items` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`product_variant_id`);
ALTER TABLE `stock_adjustments` ADD CONSTRAINT `fk_036_stock_adjustments` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`product_variant_id`);
ALTER TABLE `stock_movements` ADD CONSTRAINT `fk_037_stock_movements` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`product_variant_id`);
ALTER TABLE `stock_reservations` ADD CONSTRAINT `fk_038_stock_reservations` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`product_variant_id`);
ALTER TABLE `supplier_items` ADD CONSTRAINT `fk_039_supplier_items` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`product_variant_id`);
ALTER TABLE `product_variants` ADD CONSTRAINT `fk_040_product_variants` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
ALTER TABLE `delivery_items` ADD CONSTRAINT `fk_041_delivery_items` FOREIGN KEY (`purchase_order_item_id`) REFERENCES `purchase_order_items` (`purchase_order_item_id`);
ALTER TABLE `goods_receipt_items` ADD CONSTRAINT `fk_042_goods_receipt_items` FOREIGN KEY (`purchase_order_item_id`) REFERENCES `purchase_order_items` (`purchase_order_item_id`);
ALTER TABLE `invoice_receipt_allocations` ADD CONSTRAINT `fk_043_invoice_receipt_allo` FOREIGN KEY (`purchase_order_item_id`) REFERENCES `purchase_order_items` (`purchase_order_item_id`);
ALTER TABLE `replenishment_recommendations` ADD CONSTRAINT `fk_044_replenishment_recomm` FOREIGN KEY (`purchase_order_item_id`) REFERENCES `purchase_order_items` (`purchase_order_item_id`);
ALTER TABLE `supplier_invoice_items` ADD CONSTRAINT `fk_045_supplier_invoice_ite` FOREIGN KEY (`purchase_order_item_id`) REFERENCES `purchase_order_items` (`purchase_order_item_id`);
ALTER TABLE `purchase_orders` ADD CONSTRAINT `fk_046_purchase_orders` FOREIGN KEY (`purchase_order_status_id`) REFERENCES `purchase_order_statuses` (`purchase_order_status_id`);
ALTER TABLE `deliveries` ADD CONSTRAINT `fk_047_deliveries` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`);
ALTER TABLE `delivery_items` ADD CONSTRAINT `fk_048_delivery_items` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`);
ALTER TABLE `goods_receipt_items` ADD CONSTRAINT `fk_049_goods_receipt_items` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`);
ALTER TABLE `goods_receipts` ADD CONSTRAINT `fk_050_goods_receipts` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`);
ALTER TABLE `payments` ADD CONSTRAINT `fk_051_payments` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`);
ALTER TABLE `purchase_order_acknowledgments` ADD CONSTRAINT `fk_052_purchase_order_ackno` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`);
ALTER TABLE `purchase_order_approvals` ADD CONSTRAINT `fk_053_purchase_order_appro` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`);
ALTER TABLE `purchase_order_items` ADD CONSTRAINT `fk_054_purchase_order_items` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`);
ALTER TABLE `supplier_invoice_items` ADD CONSTRAINT `fk_055_supplier_invoice_ite` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`);
ALTER TABLE `supplier_invoices` ADD CONSTRAINT `fk_056_supplier_invoices` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`purchase_order_id`);
ALTER TABLE `purchase_order_receipt_approvals` ADD CONSTRAINT `fk_057_purchase_order_recei` FOREIGN KEY (`receipt_approval_status_id`) REFERENCES `receipt_approval_statuses` (`receipt_approval_status_id`);
ALTER TABLE `goods_receipts` ADD CONSTRAINT `fk_058_goods_receipts` FOREIGN KEY (`receipt_status_id`) REFERENCES `receipt_statuses` (`receipt_status_id`);
ALTER TABLE `replenishment_recommendations` ADD CONSTRAINT `fk_059_replenishment_recomm` FOREIGN KEY (`recommendation_status_id`) REFERENCES `recommendation_statuses` (`recommendation_status_id`);
ALTER TABLE `replenishment_recommendations` ADD CONSTRAINT `fk_060_replenishment_recomm` FOREIGN KEY (`replenishment_policy_id`) REFERENCES `replenishment_policies` (`replenishment_policy_id`);
ALTER TABLE `replenishment_reviews` ADD CONSTRAINT `fk_061_replenishment_review` FOREIGN KEY (`replenishment_recommendation_id`) REFERENCES `replenishment_recommendations` (`replenishment_recommendation_id`);
ALTER TABLE `users` ADD CONSTRAINT `fk_062_users` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
ALTER TABLE `sales` ADD CONSTRAINT `fk_063_sales` FOREIGN KEY (`sale_status_id`) REFERENCES `sale_statuses` (`sale_status_id`);
ALTER TABLE `sales_payments` ADD CONSTRAINT `fk_064_sales_payments` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`);
ALTER TABLE `delivery_items` ADD CONSTRAINT `fk_065_delivery_items` FOREIGN KEY (`sales_order_item_id`) REFERENCES `sales_order_items` (`sales_order_item_id`);
ALTER TABLE `stock_reservations` ADD CONSTRAINT `fk_066_stock_reservations` FOREIGN KEY (`sales_order_item_id`) REFERENCES `sales_order_items` (`sales_order_item_id`);
ALTER TABLE `deliveries` ADD CONSTRAINT `fk_067_deliveries` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`sales_order_id`);
ALTER TABLE `delivery_items` ADD CONSTRAINT `fk_068_delivery_items` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`sales_order_id`);
ALTER TABLE `sales` ADD CONSTRAINT `fk_069_sales` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`sales_order_id`);
ALTER TABLE `sales_order_discounts` ADD CONSTRAINT `fk_070_sales_order_discount` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`sales_order_id`);
ALTER TABLE `sales_order_items` ADD CONSTRAINT `fk_071_sales_order_items` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`sales_order_id`);
ALTER TABLE `sales_payments` ADD CONSTRAINT `fk_072_sales_payments` FOREIGN KEY (`original_payment_id`) REFERENCES `sales_payments` (`sales_payment_id`);
ALTER TABLE `carriers` ADD CONSTRAINT `fk_073_carriers` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `categories` ADD CONSTRAINT `fk_074_categories` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `customers` ADD CONSTRAINT `fk_075_customers` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `discounts` ADD CONSTRAINT `fk_076_discounts` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `payment_methods` ADD CONSTRAINT `fk_077_payment_methods` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `product_variants` ADD CONSTRAINT `fk_078_product_variants` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `products` ADD CONSTRAINT `fk_079_products` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `replenishment_policies` ADD CONSTRAINT `fk_080_replenishment_polici` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `suppliers` ADD CONSTRAINT `fk_081_suppliers` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `taxes` ADD CONSTRAINT `fk_082_taxes` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `users` ADD CONSTRAINT `fk_083_users` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);
ALTER TABLE `stock_adjustment_approvals` ADD CONSTRAINT `fk_084_stock_adjustment_app` FOREIGN KEY (`stock_adjustment_id`) REFERENCES `stock_adjustments` (`stock_adjustment_id`);
ALTER TABLE `stock_movements` ADD CONSTRAINT `fk_085_stock_movements` FOREIGN KEY (`stock_adjustment_id`) REFERENCES `stock_adjustments` (`stock_adjustment_id`);
ALTER TABLE `stock_movements` ADD CONSTRAINT `fk_086_stock_movements` FOREIGN KEY (`original_movement_id`) REFERENCES `stock_movements` (`stock_movement_id`);
ALTER TABLE `invoice_receipt_allocations` ADD CONSTRAINT `fk_087_invoice_receipt_allo` FOREIGN KEY (`supplier_invoice_item_id`) REFERENCES `supplier_invoice_items` (`supplier_invoice_item_id`);
ALTER TABLE `supplier_invoice_items` ADD CONSTRAINT `fk_088_supplier_invoice_ite` FOREIGN KEY (`supplier_invoice_id`) REFERENCES `supplier_invoices` (`supplier_invoice_id`);
ALTER TABLE `purchase_orders` ADD CONSTRAINT `fk_089_purchase_orders` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);
ALTER TABLE `replenishment_policies` ADD CONSTRAINT `fk_090_replenishment_polici` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);
ALTER TABLE `supplier_invoices` ADD CONSTRAINT `fk_091_supplier_invoices` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);
ALTER TABLE `supplier_items` ADD CONSTRAINT `fk_092_supplier_items` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);
ALTER TABLE `users` ADD CONSTRAINT `fk_093_users` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);
ALTER TABLE `purchase_order_items` ADD CONSTRAINT `fk_094_purchase_order_items` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`tax_id`);
ALTER TABLE `sales_order_items` ADD CONSTRAINT `fk_095_sales_order_items` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`tax_id`);
ALTER TABLE `supplier_invoice_items` ADD CONSTRAINT `fk_096_supplier_invoice_ite` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`tax_id`);
ALTER TABLE `audit_logs` ADD CONSTRAINT `fk_097_audit_logs` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `deliveries` ADD CONSTRAINT `fk_098_deliveries` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `discounts` ADD CONSTRAINT `fk_099_discounts` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `forecast_runs` ADD CONSTRAINT `fk_100_forecast_runs` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `goods_receipts` ADD CONSTRAINT `fk_101_goods_receipts` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `inspection_attachments` ADD CONSTRAINT `fk_102_inspection_attachmen` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `invoice_receipt_allocations` ADD CONSTRAINT `fk_103_invoice_receipt_allo` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `payments` ADD CONSTRAINT `fk_104_payments` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `purchase_order_acknowledgments` ADD CONSTRAINT `fk_105_purchase_order_ackno` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `purchase_order_approvals` ADD CONSTRAINT `fk_106_purchase_order_appro` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `purchase_order_receipt_approvals` ADD CONSTRAINT `fk_107_purchase_order_recei` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `purchase_orders` ADD CONSTRAINT `fk_108_purchase_orders` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `replenishment_reviews` ADD CONSTRAINT `fk_109_replenishment_review` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `sales` ADD CONSTRAINT `fk_110_sales` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `sales_order_discounts` ADD CONSTRAINT `fk_111_sales_order_discount` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `sales_orders` ADD CONSTRAINT `fk_112_sales_orders` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `sales_payments` ADD CONSTRAINT `fk_113_sales_payments` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `stock_adjustment_approvals` ADD CONSTRAINT `fk_114_stock_adjustment_app` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `stock_adjustments` ADD CONSTRAINT `fk_115_stock_adjustments` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `stock_movements` ADD CONSTRAINT `fk_116_stock_movements` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `stock_reservations` ADD CONSTRAINT `fk_117_stock_reservations` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `supplier_invoices` ADD CONSTRAINT `fk_118_supplier_invoices` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
ALTER TABLE `tracking_events` ADD CONSTRAINT `fk_119_tracking_events` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
