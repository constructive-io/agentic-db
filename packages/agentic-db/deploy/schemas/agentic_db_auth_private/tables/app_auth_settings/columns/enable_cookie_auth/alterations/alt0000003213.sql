-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/enable_cookie_auth/alterations/alt0000003213
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/enable_cookie_auth/column


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  ALTER COLUMN enable_cookie_auth SET NOT NULL;

