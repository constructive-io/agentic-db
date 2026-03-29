-- Deploy: migrate/user_auth_module
-- made with <3 @ constructive.io

-- requires: migrate/rls_module


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_modules_public.user_auth_module (
  id,
  database_id,
  schema_id,
  emails_table_id,
  users_table_id,
  secrets_table_id,
  encrypted_table_id,
  sessions_table_id,
  session_credentials_table_id,
  audits_table_id,
  audits_table_name,
  sign_in_function,
  sign_up_function,
  sign_out_function,
  sign_in_one_time_token_function,
  one_time_token_function,
  extend_token_expires,
  send_account_deletion_email_function,
  delete_account_function,
  set_password_function,
  reset_password_function,
  forgot_password_function,
  send_verification_email_function,
  verify_email_function,
  verify_password_function,
  check_password_function
) VALUES
  ('19be9381-651a-ed4b-35c3-12096786bdf2', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42be1a76-ba10-b5cd-3ba9-2318d0d28b3c', 'c142ecba-4964-b3ec-3d3f-670c9fbc9a60', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'a42d3838-c59b-b8fc-2b55-757cd14c427e', '0c318c3b-e53b-3083-fa53-e27bb87b3f22', 'bfa08e3e-fb20-3153-84aa-30780a8a4805', '193704a9-3707-edb7-601a-b161685f1db0', '37800d55-3fb2-5484-0e9f-1a013ff6f0d0', 'audit_logs', 'sign_in', 'sign_up', 'sign_out', 'sign_in_one_time_token', 'one_time_token', 'extend_token_expires', 'send_account_deletion_email', 'confirm_delete_account', 'set_password', 'reset_password', 'forgot_password', 'send_verification_email', 'verify_email', 'verify_password', 'check_password');


SET session_replication_role TO DEFAULT;


