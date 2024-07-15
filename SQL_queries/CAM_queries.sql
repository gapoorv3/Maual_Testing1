-- consumer
SELECT * FROM `cam_v1.0`.`sb_cam_consumer_master` order by 1 desc; 
WHERE consumer_id = 378 business_id = 2 AND channel_id = 2 AND alias_id = 2 ORDER BY 1 DESC
SELECT * FROM `cam_v1.0`.`sb_cam_consumer_master` WHERE  business_id = 2 AND channel_id = 2 AND alias_id = 2 AND registration_date BETWEEN '2023-01-01' AND '2023-03-01' AND reg_device = 'PC_BROWSER'
SELECT * FROM `cam_v1.0`.`sb_cam_consumer_info` WHERE  business_id = 2 AND channel_id = 2 AND alias_id = 2 AND registration_date BETWEEN '2022-10-01' AND '2023-04-28' AND reg_ip = '127.0.01'

-- validation
SELECT * FROM `cam_v1.0`.`sb_cam_validation_schema` WHERE service_name = 'updateConsumerProfileStatus'

-- profile statussb_wallet_master
SELECT * FROM `cam_v1.0`.`sb_gen_profile_status_master` WHERE business_id = 2 AND channel_id = 2 
SELECT * FROM `cam_v1.0`.`sb_cam_consumer_verification_status` WHERE business_id = 2 AND channel_id = 2 AND created_at BETWEEN '2022-11-17 00:00:00' AND '2022-12-31 23:59:59' AND profile_status IN ('NEW_VERIFICATION_PENDING','VERIFICATION_PENDING')    AND created_at < '2023-03-31'      AND verified_by IS NOT NULL  
SELECT NOW()

-- document
SELECT * FROM `cam_v1.0`.`sb_cam_consumer_documents` WHERE business_id = 2 AND channel_id = 2 AND doc_type = 'ADDRESS_PROOF' AND doc_name = 'MOBILE_BILL'  

-- login details
SELECT * FROM `cam_v1.0`.`sb_cam_consumer_login_status` WHERE consumer_id = 673

-- profile update
SELECT * FROM `cam_v1.0`.`sb_cam_consumer_profile_update_requests` WHERE  business_id = 2 AND channel_id = 2 AND STATUS = 'requested' AND NOT change_type = 'CHANGE_NAME'

-- wallet
update `wallet_v1.0`.`sb_wallet_master` set balance = '1000' where wallet_id in (select wallet_id from `wallet_v1.0`.`sb_wallet_user_info`order by 1 desc);
select * from `wallet_v1.0`.`sb_wallet_master` where wallet_id = 432120;
update `wallet_v1.0`.`sb_wallet_master` set balance = '10000' where wallet_id = 432120;