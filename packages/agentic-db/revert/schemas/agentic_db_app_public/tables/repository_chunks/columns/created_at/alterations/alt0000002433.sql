-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/created_at/alterations/alt0000002433


ALTER TABLE "agentic_db_app_public".repository_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


