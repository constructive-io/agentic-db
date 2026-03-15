-- Revert: schemas/agent_db_app_public/tables/milestones/columns/project_id/alterations/alt0000002818


ALTER TABLE "agent_db_app_public".milestones 
  ALTER COLUMN project_id DROP NOT NULL;


