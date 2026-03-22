-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/is_secret/alterations/alt0000001405


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  ADD COLUMN entity_id uuid;

