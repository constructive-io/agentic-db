-- Deploy: schemas/agentic_db_app_public/tables/user_settings/columns/key/alterations/alt0000002529
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/key/column
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/updated_at/alterations/alt0000002528


ALTER TABLE "agentic_db_app_public".user_settings 
  ALTER COLUMN key SET NOT NULL;

