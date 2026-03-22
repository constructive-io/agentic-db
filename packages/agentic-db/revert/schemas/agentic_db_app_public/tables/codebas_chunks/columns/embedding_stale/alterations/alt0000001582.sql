-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/embedding_stale/alterations/alt0000001582


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


