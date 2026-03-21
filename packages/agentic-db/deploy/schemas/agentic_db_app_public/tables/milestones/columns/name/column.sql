-- Deploy: schemas/agentic_db_app_public/tables/milestones/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/project_id/column


ALTER TABLE agentic_db_app_public.milestones 
  ADD COLUMN name text;

