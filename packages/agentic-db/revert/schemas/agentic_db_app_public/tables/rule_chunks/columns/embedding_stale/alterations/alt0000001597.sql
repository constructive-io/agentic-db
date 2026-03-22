-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/embedding_stale/alterations/alt0000001597


ALTER TABLE "agentic_db_app_public".rule_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


