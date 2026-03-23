-- Revert: schemas/agentic_db_app_public/tables/skills/columns/embedding_stale/alterations/alt0000001265


ALTER TABLE "agentic_db_app_public".skills 
  ALTER COLUMN embedding_stale DROP NOT NULL;


