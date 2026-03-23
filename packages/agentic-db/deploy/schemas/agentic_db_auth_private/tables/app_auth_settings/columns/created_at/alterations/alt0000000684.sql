-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/created_at/alterations/alt0000000684
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/created_at/column


ALTER TABLE "agentic_db_auth_private".app_auth_settings 
  ALTER COLUMN created_at SET DEFAULT now();

