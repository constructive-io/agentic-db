-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/embedding_stale/alterations/alt0000001558


ALTER TABLE "agentic_db_app_public".agent_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


