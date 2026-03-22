-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/columns/embedding_stale/alterations/alt0000002635


ALTER TABLE "agentic_db_app_public".goal_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


