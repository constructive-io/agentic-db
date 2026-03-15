-- Deploy: schemas/agent_db_app_public/tables/milestones/columns/project_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/updated_at/alterations/alt0000004544


ALTER TABLE "agent_db_app_public".milestones 
  ADD COLUMN project_id uuid;

