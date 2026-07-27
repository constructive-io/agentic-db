-- Deploy schemas/metaschema_modules_public/tables/user_auth_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.user_auth_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    emails_table_id uuid NOT NULL DEFAULT uuid_nil(),
    users_table_id uuid NOT NULL DEFAULT uuid_nil(),
    secrets_table_id uuid NOT NULL DEFAULT uuid_nil(),
    encrypted_table_id uuid NOT NULL DEFAULT uuid_nil(),
    -- TOKENS_REMOVAL: tokens_table_id removed - all auth now uses sessions_module
    -- SESSION_MIGRATION: sessions and session_credentials for session-centric auth
    sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),

    audits_table_id uuid NOT NULL DEFAULT uuid_nil(),
    audits_table_name text NOT NULL DEFAULT 'audit_log_auth',


    sign_in_function text NOT NULL DEFAULT 'sign_in',
    sign_up_function text NOT NULL DEFAULT 'sign_up',
    sign_out_function text NOT NULL DEFAULT 'sign_out',
    set_password_function text NOT NULL DEFAULT 'set_password',
    reset_password_function text NOT NULL DEFAULT 'reset_password',
    forgot_password_function text NOT NULL DEFAULT 'forgot_password',
    send_verification_email_function text NOT NULL DEFAULT 'send_verification_email',
    verify_email_function text NOT NULL DEFAULT 'verify_email',
    
    verify_password_function text NOT NULL DEFAULT 'verify_password',
    check_password_function text NOT NULL DEFAULT 'check_password',

    send_account_deletion_email_function text NOT NULL DEFAULT 'send_account_deletion_email',
    delete_account_function text NOT NULL DEFAULT 'confirm_delete_account',

    sign_in_cross_origin_function text NOT NULL DEFAULT 'sign_in_cross_origin',
    request_cross_origin_token_function text NOT NULL DEFAULT 'request_cross_origin_token',
    extend_token_expires text NOT NULL DEFAULT 'extend_token_expires',

    -- UNIQUE(api_id),

    -- API routing (configurable per-module)
    api_name text DEFAULT 'auth',
    private_api_name text DEFAULT NULL,

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT email_table_fkey FOREIGN KEY (emails_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT users_table_fkey FOREIGN KEY (users_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT secrets_table_fkey FOREIGN KEY (secrets_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT encrypted_table_fkey FOREIGN KEY (encrypted_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    -- TOKENS_REMOVAL: tokens_table_fkey removed - all auth now uses sessions_module
    -- SESSION_MIGRATION: foreign keys for sessions and session_credentials
    CONSTRAINT sessions_table_fkey FOREIGN KEY (sessions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT session_credentials_table_fkey FOREIGN KEY (session_credentials_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX user_auth_module_database_id_idx ON metaschema_modules_public.user_auth_module ( database_id );

COMMENT ON CONSTRAINT email_table_fkey
     ON metaschema_modules_public.user_auth_module IS E'@omit';
COMMENT ON CONSTRAINT users_table_fkey
     ON metaschema_modules_public.user_auth_module IS E'@omit';
COMMENT ON CONSTRAINT secrets_table_fkey
     ON metaschema_modules_public.user_auth_module IS E'@omit';
COMMENT ON CONSTRAINT encrypted_table_fkey
     ON metaschema_modules_public.user_auth_module IS E'@omit';
-- TOKENS_REMOVAL: tokens_table_fkey comment removed
-- SESSION_MIGRATION: omit comments for sessions and session_credentials foreign keys
COMMENT ON CONSTRAINT sessions_table_fkey
     ON metaschema_modules_public.user_auth_module IS E'@omit';
COMMENT ON CONSTRAINT session_credentials_table_fkey
     ON metaschema_modules_public.user_auth_module IS E'@omit';

COMMIT;
