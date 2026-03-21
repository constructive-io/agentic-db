-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/content/alterations/alt0000002313


ALTER TABLE "agentic_db_app_public".thread_chunks 
  ALTER COLUMN content DROP NOT NULL;


