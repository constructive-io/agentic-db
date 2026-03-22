-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/config/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/completed_at/column


ALTER TABLE agentic_db_app_public.projects 
  ADD COLUMN config jsonb;

