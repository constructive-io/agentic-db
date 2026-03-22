-- Deploy: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/hiking_trail_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.hiking_trail_chunks 
  ADD COLUMN hiking_trail_id uuid;

