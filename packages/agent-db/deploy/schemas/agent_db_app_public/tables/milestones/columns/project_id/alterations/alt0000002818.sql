-- Deploy: schemas/agent_db_app_public/tables/milestones/columns/project_id/alterations/alt0000002818
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/milestones/columns/project_id/column


ALTER TABLE "agent_db_app_public".milestones 
  ALTER COLUMN project_id SET NOT NULL;

