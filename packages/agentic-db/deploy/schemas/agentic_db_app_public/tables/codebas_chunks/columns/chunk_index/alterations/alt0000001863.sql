-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/columns/chunk_index/alterations/alt0000001863
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

