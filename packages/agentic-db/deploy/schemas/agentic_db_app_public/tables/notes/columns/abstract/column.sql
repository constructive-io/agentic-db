-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/abstract/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/content/alterations/alt0000003745


ALTER TABLE agentic_db_app_public.notes 
  ADD COLUMN abstract text;

