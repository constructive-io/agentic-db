-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/columns/embedding_stale/alterations/alt0000002724
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.codebas_chunks 
  ALTER COLUMN embedding_stale SET NOT NULL;

