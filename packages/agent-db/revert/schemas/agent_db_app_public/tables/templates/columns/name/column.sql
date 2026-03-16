-- Revert: schemas/agent_db_app_public/tables/templates/columns/name/column


ALTER TABLE "agent_db_app_public".templates 
  DROP COLUMN name RESTRICT;


