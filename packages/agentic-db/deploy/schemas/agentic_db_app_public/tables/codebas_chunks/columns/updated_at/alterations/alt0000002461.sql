-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/columns/updated_at/alterations/alt0000002461
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ALTER COLUMN updated_at SET NOT NULL;

