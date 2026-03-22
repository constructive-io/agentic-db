-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/key/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/updated_at/alterations/alt0000001403


ALTER TABLE "agentic_db_app_public".runtime_config 
  ADD COLUMN key text;

