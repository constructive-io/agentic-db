-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/content_hash/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/file_path/column


ALTER TABLE agentic_db_app_public.skills 
  ADD COLUMN content_hash text;

