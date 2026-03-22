-- Deploy: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/chunk_index/alterations/alt0000006347


ALTER TABLE agentic_db_app_public.hiking_trail_chunks 
  ADD COLUMN content text;

