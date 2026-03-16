-- Revert: schemas/agent_db_app_public/tables/tools/columns/tags/column


ALTER TABLE "agent_db_app_public".tools 
  DROP COLUMN tags RESTRICT;


