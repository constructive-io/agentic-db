-- Revert: schemas/agent_db_app_public/tables/notes/columns/tags/column


ALTER TABLE "agent_db_app_public".notes 
  DROP COLUMN tags RESTRICT;


