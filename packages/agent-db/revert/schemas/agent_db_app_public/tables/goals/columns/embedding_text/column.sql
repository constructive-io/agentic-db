-- Revert: schemas/agent_db_app_public/tables/goals/columns/embedding_text/column


ALTER TABLE "agent_db_app_public".goals 
  DROP COLUMN embedding_text RESTRICT;


