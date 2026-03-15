-- Revert: schemas/agent_db_app_public/tables/milestones/columns/status/column


ALTER TABLE "agent_db_app_public".milestones 
  DROP COLUMN status RESTRICT;


