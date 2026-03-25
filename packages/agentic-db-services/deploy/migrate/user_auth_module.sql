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
  ('019d2728-43b5-7d84-8134-8f2a1d7a3dcd', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-1408-79e7-9734-7852892ab5dd', '019d2728-1701-7da0-9c6b-645985d788d3', '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-fe7c-7354-b9ff-da6e2633385f', '019d2728-1116-7ca6-864c-2862b8a303fa', '019d2728-01b8-7517-aecd-18ea068052a0', '019d2728-0616-7abc-bbed-c98eb90a133a', '019d2728-45f3-76ac-bc98-13e01a5a4e98', 'audit_logs', 'sign_in', 'sign_up', 'sign_out', 'sign_in_one_time_token', 'one_time_token', 'extend_token_expires', 'send_account_deletion_email', 'confirm_delete_account', 'set_password', 'reset_password', 'forgot_password', 'send_verification_email', 'verify_email', 'verify_password', 'check_password');


SET session_replication_role TO DEFAULT;


