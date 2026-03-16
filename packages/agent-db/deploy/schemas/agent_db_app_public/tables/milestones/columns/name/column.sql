-- Deploy: schemas/agent_db_app_public/tables/milestones/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/project_id/column


ALTER TABLE "agent_db_app_public".milestones 
  ADD COLUMN name text;

