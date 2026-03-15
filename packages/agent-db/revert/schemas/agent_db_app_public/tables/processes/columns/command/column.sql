-- Revert: schemas/agent_db_app_public/tables/processes/columns/command/column


ALTER TABLE "agent_db_app_public".processes 
  DROP COLUMN command RESTRICT;


