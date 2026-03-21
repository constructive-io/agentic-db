-- Deploy: schemas/agentic_db_app_public/tables/list_chunks/columns/content/alterations/alt0000004681
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/list_chunks/table
-- requires: schemas/agentic_db_app_public/tables/list_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/list_chunks/columns/chunk_index/alterations/alt0000004680


ALTER TABLE agentic_db_app_public.list_chunks 
  ALTER COLUMN content SET NOT NULL;

