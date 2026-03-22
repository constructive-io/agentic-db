-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/content/alterations/alt0000001940


ALTER TABLE "agentic_db_app_public".note_chunks 
  ALTER COLUMN content DROP NOT NULL;


