-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_fingerprint_mode/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table


ALTER TABLE "agentic_db_auth_private".app_auth_settings 
  ADD COLUMN default_fingerprint_mode text;

