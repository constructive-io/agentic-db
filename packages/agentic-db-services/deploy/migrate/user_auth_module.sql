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
  ('019d11da-28fe-71f0-b8e9-3265a2bf98f2', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-01f4-7d57-9c6a-119a769d4b88', '019d11da-0502-76d2-bd69-ff87518e3d9f', '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-ecf9-710c-8ade-d45cc46b07d8', '019d11d9-fefc-7ea4-b789-25cce72a1503', '019d11d9-f015-71a6-83d4-ecd08c092d1e', '019d11d9-f444-7111-abf8-b96003857db8', '019d11da-29df-7107-94b7-18dec311dddd', 'audit_logs', 'sign_in', 'sign_up', 'sign_out', 'sign_in_one_time_token', 'one_time_token', 'extend_token_expires', 'send_account_deletion_email', 'confirm_delete_account', 'set_password', 'reset_password', 'forgot_password', 'send_verification_email', 'verify_email', 'verify_password', 'check_password');


SET session_replication_role TO DEFAULT;


