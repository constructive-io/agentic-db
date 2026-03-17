-- Deploy: schemas/agentic_db_app_public/tables/workflows/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/embedding/column


ALTER TABLE "agentic_db_app_public".workflows 
  ADD COLUMN entity_id uuid;

