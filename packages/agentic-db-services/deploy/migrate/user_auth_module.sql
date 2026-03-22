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
  ('019d1737-067e-784d-87b0-ea65193a594e', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e4a2-7ff4-8340-618a60f05c9a', '019d1736-e760-7489-b9f5-4c36ed21c55c', '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-d0ee-7a2b-9541-ec1bcdb1426d', '019d1736-e1e6-770d-b5cc-b35f9bc34e6c', '019d1736-d3dd-7a73-a3fb-b54b799818b1', '019d1736-d7dd-71a8-b40b-a0084036b3dc', '019d1737-0753-7ebf-8030-d56bdefeae9e', 'audit_logs', 'sign_in', 'sign_up', 'sign_out', 'sign_in_one_time_token', 'one_time_token', 'extend_token_expires', 'send_account_deletion_email', 'confirm_delete_account', 'set_password', 'reset_password', 'forgot_password', 'send_verification_email', 'verify_email', 'verify_password', 'check_password');


SET session_replication_role TO DEFAULT;


