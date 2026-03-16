-- Revert: schemas/agent_db_app_public/tables/threads/columns/embedding/column


ALTER TABLE "agent_db_app_public".threads 
  DROP COLUMN embedding RESTRICT;


