-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/source/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/content/alterations/alt0000004589


ALTER TABLE agentic_db_app_public.ideas 
  ADD COLUMN source text;

