-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/target_date/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table


ALTER TABLE agentic_db_app_public.projects 
  ADD COLUMN target_date timestamptz;

