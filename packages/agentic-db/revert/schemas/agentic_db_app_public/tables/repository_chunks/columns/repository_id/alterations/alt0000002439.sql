-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/repository_id/alterations/alt0000002439


ALTER TABLE "agentic_db_app_public".repository_chunks 
  ALTER COLUMN repository_id DROP NOT NULL;


