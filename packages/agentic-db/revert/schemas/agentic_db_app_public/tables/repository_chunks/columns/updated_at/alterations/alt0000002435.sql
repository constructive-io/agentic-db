-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/updated_at/alterations/alt0000002435


ALTER TABLE "agentic_db_app_public".repository_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


