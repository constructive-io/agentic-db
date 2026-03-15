-- Revert: schemas/agent_db_app_public/tables/milestones/columns/embedding/column


ALTER TABLE "agent_db_app_public".milestones 
  DROP COLUMN embedding RESTRICT;


