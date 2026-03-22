-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/columns/content/alterations/alt0000006190
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/chunk_index/alterations/alt0000006189


ALTER TABLE agentic_db_app_public.codebas_chunks 
  ALTER COLUMN content SET NOT NULL;

