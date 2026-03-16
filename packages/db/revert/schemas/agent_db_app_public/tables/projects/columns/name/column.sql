-- Revert: schemas/agent_db_app_public/tables/projects/columns/name/column


ALTER TABLE "agent_db_app_public".projects 
  DROP COLUMN name RESTRICT;


