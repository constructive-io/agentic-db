-- Revert: schemas/agent_db_app_public/tables/rules/columns/severity/column


ALTER TABLE "agent_db_app_public".rules 
  DROP COLUMN severity RESTRICT;


