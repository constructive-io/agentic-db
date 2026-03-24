-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table


ALTER TABLE "agentic_db_auth_private".app_auth_settings 
  ADD COLUMN updated_at timestamptz;

