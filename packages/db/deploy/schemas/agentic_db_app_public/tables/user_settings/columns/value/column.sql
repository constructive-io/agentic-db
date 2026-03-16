-- Deploy: schemas/agentic_db_app_public/tables/user_settings/columns/value/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/key/alterations/alt0000001417


ALTER TABLE "agentic_db_app_public".user_settings 
  ADD COLUMN value jsonb;

