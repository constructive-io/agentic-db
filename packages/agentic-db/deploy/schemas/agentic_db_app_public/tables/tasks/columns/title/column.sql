-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/updated_at/alterations/alt0000003955


ALTER TABLE agentic_db_app_public.tasks 
  ADD COLUMN title text;

