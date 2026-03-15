-- Revert: schemas/agent_db_app_public/tables/lists/columns/tags/column


ALTER TABLE "agent_db_app_public".lists 
  DROP COLUMN tags RESTRICT;


