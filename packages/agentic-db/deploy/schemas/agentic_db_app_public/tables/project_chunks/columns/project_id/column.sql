-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/columns/project_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/milestones/indexes/milestones_project_id_idx


ALTER TABLE agentic_db_app_public.project_chunks 
  ADD COLUMN project_id uuid;

