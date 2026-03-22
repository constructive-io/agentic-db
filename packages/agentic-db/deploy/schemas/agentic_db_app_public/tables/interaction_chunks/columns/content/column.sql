-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/columns/chunk_index/alterations/alt0000005727


ALTER TABLE agentic_db_app_public.interaction_chunks 
  ADD COLUMN content text;

