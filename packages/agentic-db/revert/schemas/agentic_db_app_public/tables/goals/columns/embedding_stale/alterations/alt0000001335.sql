-- Revert: schemas/agentic_db_app_public/tables/goals/columns/embedding_stale/alterations/alt0000001335


ALTER TABLE "agentic_db_app_public".goals 
  ALTER COLUMN embedding_stale DROP NOT NULL;


