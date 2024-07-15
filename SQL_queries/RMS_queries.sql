_USER-->> 58(paypr_head)
SELECT * FROM `rms_v1.0`.`sb_user_master` WHERE user_id = 58
SELECT * FROM `rms_v1.0`.`sb_user_master` WHERE org_id IN (SELECT org_id FROM `rms_v1.0`.`sb_org_master` WHERE business_id = 2 AND channel_id = 74)
SELECT * FROM `rms_v1.0`.`sb_user_details` WHERE org_id = 270
BO_USER-->>
SELECT * FROM `rms_v1.0`.`sb_user_master` WHERE org_id IN (SELECT org_id FROM `rms_v1.0`.`sb_org_master` WHERE business_id = 2 AND channel_id = 0) AND role_id = 1

ORG-->>
SELECT * FROM `rms_v1.0`.`sb_org_master` WHERE org_id = 273
SELECT * FROM `rms_v1.0`.`sb_org_master` WHERE business_id = 2 AND channel_id = 74

permission-->> 
SELECT * FROM `rms_v1.0`.`sb_permissions` WHERE access_url = 'getLocationWiseRetailer'

OTP-->>
SELECT * FROM `rms_v1.0`.`sb_user_otp_tokens`  ORDER BY 1 DESC

bank-->>
SELECT* FROM `rms_v1.0`.`sb_org_bank_details` WHERE org_id = 268

txn-->>
select * from `rms_v1.0`.`sb_retailer_transactions` where  txn_date between '2023-03-01 00:00:00' and '2023-04-12 23:59:59' order by 1 desc
select * from `rms_v1.0`.`sb_retailer_transaction_data` order by 1 desc
SELECT * FROM `rms_v1.0`.`sb_retailer_transaction_data` where  status = 'requested' and updated_at between '2023-03-12' and '2023-04-12'
select * from `rms_v1.0`.`sb_retailer_transactions` where txn_id in (select txn_id from `rms_v1.0`.`sb_retailer_transaction_data` where status = 'requested')

configuration-->>
select * from `rms_v1.0`.`sb_channel_configuration_master` where config_code like '%zip%' and channel_id = 74
SELECT * FROM `rms_v1.0`.`sb_configuration_master`  WHERE config_code LIKE '%zip%' and config_type = 'b2b'

verification-->> 
select * from `rms_v1.0`.`sb_org_verification_status` where org_id = 161 verified_by is null profile_status Not in ('NEW_UPLOAD_PENDING','ACTIVE','UPLOAD_PENDING')  and verified_by is null or verified_by = 58

credit_limit-->>
select * from `rms_v1.0`.`sb_credit_limit_request_logs` where created_at between '2023-03-15' and '2023-04-12 23:59:59' order by 1 desc

QR-->>
select * from `rms_v1.0`.`sb_qr_codes` order by 1 desc
select * from `rms_v1.0`.`sb_org_qr_code_mapping` order by 1 desc

business,_channel-->>
select * from `rms_v1.0`.`sb_business_master` 
select * from `rms_v1.0`.`sb_channel_master`

state, city-->> 
select * from `rms_v1.0`.`sb_gen_state_master` where country_code = 'TT'
select * from `rms_v1.0`.`sb_gen_city_master` where state_code = 'TT-WO'


