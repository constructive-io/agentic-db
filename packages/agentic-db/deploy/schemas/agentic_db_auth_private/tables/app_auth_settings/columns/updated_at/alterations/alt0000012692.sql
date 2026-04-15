-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/updated_at/alterations/alt0000012692
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/updated_at/column


ALTER TABLE agentic_db_auth_private.app_auth_settings 
  ALTER COLUMN updated_at SET DEFAULT now();

