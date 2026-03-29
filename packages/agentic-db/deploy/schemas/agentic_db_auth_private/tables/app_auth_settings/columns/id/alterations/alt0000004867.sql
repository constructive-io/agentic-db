-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/id/alterations/alt0000004867
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/id/column


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  ALTER COLUMN id SET NOT NULL;

