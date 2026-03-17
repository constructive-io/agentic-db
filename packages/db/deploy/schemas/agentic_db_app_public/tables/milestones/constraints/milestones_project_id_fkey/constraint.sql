-- Deploy: schemas/agentic_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/status/alterations/alt0000001294


ALTER TABLE "agentic_db_app_public".milestones 
  ADD CONSTRAINT milestones_project_id_fkey 
    FOREIGN KEY(project_id) 
    REFERENCES "agentic_db_app_public".projects (id) 
    ON DELETE CASCADE;

