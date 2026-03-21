-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/status/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/source/column


ALTER TABLE agentic_db_app_public.ideas 
  ADD COLUMN status text;

