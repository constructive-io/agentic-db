-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/embedding_stale/alterations/alt0000002424


ALTER TABLE "agentic_db_app_public".project_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


