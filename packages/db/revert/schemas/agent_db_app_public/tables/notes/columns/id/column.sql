-- Revert: schemas/agent_db_app_public/tables/notes/columns/id/column


ALTER TABLE "agent_db_app_public".notes 
  DROP COLUMN id RESTRICT;


