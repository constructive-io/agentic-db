-- Revert: schemas/agent_db_app_public/tables/rules/columns/tags/column


ALTER TABLE "agent_db_app_public".rules 
  DROP COLUMN tags RESTRICT;


