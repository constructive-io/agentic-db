-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table


ALTER TABLE agentic_db_app_public.projects 
  ADD COLUMN created_at timestamptz;

