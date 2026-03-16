-- Revert: schemas/agent_db_app_public/tables/habits/columns/frequency/column


ALTER TABLE "agent_db_app_public".habits 
  DROP COLUMN frequency RESTRICT;


