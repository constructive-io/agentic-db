-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/columns/name/alterations/alt0000001334
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/updated_at/alterations/alt0000001333


ALTER TABLE "agentic_db_app_public".runtime_states 
  ALTER COLUMN name SET NOT NULL;

