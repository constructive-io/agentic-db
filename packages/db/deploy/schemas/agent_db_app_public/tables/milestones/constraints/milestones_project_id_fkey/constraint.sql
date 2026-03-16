-- Deploy: schemas/agent_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/status/alterations/alt0000002146


ALTER TABLE "agent_db_app_public".milestones 
  ADD CONSTRAINT milestones_project_id_fkey 
    FOREIGN KEY(project_id) 
    REFERENCES "agent_db_app_public".projects (id) 
    ON DELETE CASCADE;

