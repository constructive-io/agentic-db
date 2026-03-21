-- Deploy: schemas/agentic_db_app_public/tables/milestones/columns/project_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/updated_at/alterations/alt0000004374


ALTER TABLE agentic_db_app_public.milestones 
  ADD COLUMN project_id uuid;

