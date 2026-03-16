-- Revert: schemas/agent_db_app_public/tables/notes/columns/embedding/column


ALTER TABLE "agent_db_app_public".notes 
  DROP COLUMN embedding RESTRICT;


