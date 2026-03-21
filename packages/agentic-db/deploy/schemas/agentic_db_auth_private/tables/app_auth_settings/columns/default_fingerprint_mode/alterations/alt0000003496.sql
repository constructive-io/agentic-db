-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/alterations/alt0000003496
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/column



ALTER TABLE agentic_db_auth_private.app_auth_settings 
    ALTER COLUMN default_fingerprint_mode SET DEFAULT 'lax';

