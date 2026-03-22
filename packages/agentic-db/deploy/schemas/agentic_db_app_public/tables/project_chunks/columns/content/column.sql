-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/project_chunks/columns/chunk_index/alterations/alt0000006148


ALTER TABLE agentic_db_app_public.project_chunks 
  ADD COLUMN content text;

