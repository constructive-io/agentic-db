-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/alterations/alt0000004870
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/column



ALTER TABLE agentic_db_auth_private.app_auth_settings 
    ALTER COLUMN require_csrf_for_auth SET DEFAULT true;

