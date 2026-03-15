-- Deploy: schemas/agent_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/status/alterations/alt0000004546


ALTER TABLE "agent_db_app_public".milestones 
  ADD CONSTRAINT milestones_project_id_fkey 
    FOREIGN KEY(project_id) 
    REFERENCES "agent_db_app_public".projects (id) 
    ON DELETE CASCADE;

