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
  ('019d37ba-7d32-7013-bc95-26f8ae5692ba', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-53bd-7dfa-9a2a-9c95c48a260a', '019d37ba-569c-7261-a2c1-0141c5943571', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37ba-3f14-72a9-9869-0956d3428991', '019d37ba-50ce-7e82-8463-9a0663f36d12', '019d37ba-4215-7e7c-b59c-eda58691c519', '019d37ba-4639-7055-a2fd-819201437f9a', '019d37ba-7ed7-7bb5-b497-75724810cc41', 'audit_logs', 'sign_in', 'sign_up', 'sign_out', 'sign_in_one_time_token', 'one_time_token', 'extend_token_expires', 'send_account_deletion_email', 'confirm_delete_account', 'set_password', 'reset_password', 'forgot_password', 'send_verification_email', 'verify_email', 'verify_password', 'check_password');


SET session_replication_role TO DEFAULT;


