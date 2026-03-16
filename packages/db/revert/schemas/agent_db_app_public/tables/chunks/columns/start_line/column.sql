-- Revert: schemas/agent_db_app_public/tables/chunks/columns/start_line/column


ALTER TABLE "agent_db_app_public".chunks 
  DROP COLUMN start_line RESTRICT;


