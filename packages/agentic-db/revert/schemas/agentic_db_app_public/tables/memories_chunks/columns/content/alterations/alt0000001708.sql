-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/content/alterations/alt0000001708


ALTER TABLE "agentic_db_app_public".memories_chunks 
  ALTER COLUMN content DROP NOT NULL;


