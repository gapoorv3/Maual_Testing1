_user-->>
SELECT * FROM `payments_v1.0`.`sb_csh_user_info` WHERE business_id =2 AND channel_id =2 AND user_type = 'consumer' 
SELECT * FROM `payments_v1.0`.`sb_csh_user_info` WHERE user_id = 438 OR system_user_id = 479
SELECT * FROM `payments_v1.0`.`sb_csh_user_info` WHERE user_id = 479

auto_access-->>
SELECT * FROM `payments_v1.0`.`sb_csh_auto_process_criteria_master` 
SELECT * FROM `payments_v1.0`.`sb_csh_auto_process_txn_criteria`  WHERE business_id = 2 AND channel_id = 2 AND alias_id = 2 AND txn_type = 'CORRECTION_WITHDRAWAL' ORDER BY 1 DESC

_validation-->>
SELECT * FROM `payments_v1.0`.`sb_csh_validation_schema` WHERE service_name ='withdrawalRequest'

wallet-->>
SELECT * FROM `wallet_v1.0`.`sb_wallet_user_info` WHERE system_user_id = 378
SELECT * FROM `wallet_v1.0`.`sb_transaction_type_master` WHERE channel_id = 2

JOINS-->>
SELECT `sb_csh_auto_process_criteria_master`.id, `sb_csh_auto_process_criteria_master`.criteria_code, 
`sb_csh_auto_process_txn_criteria`.txn_type, `sb_csh_auto_process_txn_criteria`.criteria_id, `sb_csh_auto_process_txn_criteria`.criteria_value, 
`sb_csh_auto_process_txn_criteria`.level, `sb_csh_auto_process_txn_criteria`.status
FROM `payments_v1.0`.`sb_csh_auto_process_criteria_master` INNER JOIN `payments_v1.0`.`sb_csh_auto_process_txn_criteria` ON 
`sb_csh_auto_process_criteria_master`.id = `sb_csh_auto_process_txn_criteria`.criteria_id WHERE business_id = 2 AND channel_id = 2 AND alias_id = 2 AND txn_type = 'CORRECTION_DEPOSIT';

txn-->>
SELECT * FROM `payments_v1.0`.`sb_csh_user_transactions` ORDER BY 1 DESC 
SELECT * FROM `payments_v1.0`.`sb_csh_user_manual_payment_requests`  ORDER BY 1 DESC
SELECT * FROM `payments_v1.0`.`sb_csh_user_manual_payment_requests`  WHERE created_at BETWEEN '2023-04-14 00:00:00' AND '2023-04-20 23:59:59' ORDER BY 1 DESC 
SELECT * FROM `payments_v1.0`.`sb_csh_provider_transactions` WHERE created_at BETWEEN '2023-04-20' AND '2023-04-21' ORDER BY 1 DESC 

SELECT COUNT(amount) FROM `payments_v1.0`.`sb_csh_user_manual_payment_requests` WHERE created_at BETWEEN '2023-04-21 00:00:00' AND '2023-04-21 23:59:59' AND STATUS IN ('processed','payment done') AND business_id = 2 AND channel_id =2 AND alias_id = 2
SELECT SUM(amount) FROM `payments_v1.0`.`sb_csh_user_manual_payment_requests` WHERE consumer_id = 653 AND created_at BETWEEN '2023-04-20 00:00:00' AND '2023-04-20 23:59:59' AND STATUS IN ('processed','payment done')  AND business_id = 2 AND channel_id =2 AND alias_id = 2
SELECT SUM(net_amount) FROM `payments_v1.0`.`sb_csh_user_manual_payment_requests`  WHERE txn_type = 'deposit' AND request_type = 'correction' AND created_at BETWEEN '2023-05-03 00:00:00' AND '2023-05-03 23:59:59' AND STATUS IN ('processed','payment done')  AND business_id = 2 AND channel_id =2 AND alias_id = 2
SELECT COUNT(amount) FROM `payments_v1.0`.`sb_csh_user_manual_payment_requests` WHERE consumer_id = 378 AND STATUS IN ('processed','payment done') AND created_at BETWEEN '2023-04-21 00:00:00' AND '2023-04-21 23:59:59'

UPDATE `sb_csh_auto_process_txn_criteria` SET STATUS = "INACTIVE"

-- wallet
update `wallet_v1.0`.`sb_wallet_master` set balance = '1000' where wallet_id in (select wallet_id from `wallet_v1.0`.`sb_wallet_user_info`order by 1 desc);
select * from `wallet_v1.0`.`sb_wallet_master` where wallet_id = 432120;
update `wallet_v1.0`.`sb_wallet_master` set balance = '10000' where wallet_id = 432120;



