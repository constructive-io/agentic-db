-- Revert: schemas/agent_db_app_public/tables/projects/columns/tags/column


ALTER TABLE "agent_db_app_public".projects 
  DROP COLUMN tags RESTRICT;


