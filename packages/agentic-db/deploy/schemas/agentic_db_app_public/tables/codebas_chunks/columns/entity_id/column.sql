-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ADD COLUMN entity_id uuid;

