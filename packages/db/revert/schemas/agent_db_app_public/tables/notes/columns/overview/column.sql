-- Revert: schemas/agent_db_app_public/tables/notes/columns/overview/column


ALTER TABLE "agent_db_app_public".notes 
  DROP COLUMN overview RESTRICT;


