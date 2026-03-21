-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/id/alterations/alt0000002430


ALTER TABLE "agentic_db_app_public".repository_chunks 
  ALTER COLUMN id DROP NOT NULL;


