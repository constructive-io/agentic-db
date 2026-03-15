-- Revert: schemas/agent_db_app_public/tables/notes/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".notes 
  DROP COLUMN embedding_text RESTRICT;


