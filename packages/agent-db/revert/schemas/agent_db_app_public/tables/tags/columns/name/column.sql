-- Revert: schemas/agent_db_app_public/tables/tags/columns/name/column


ALTER TABLE "agent_db_app_public".tags 
  DROP COLUMN name RESTRICT;


