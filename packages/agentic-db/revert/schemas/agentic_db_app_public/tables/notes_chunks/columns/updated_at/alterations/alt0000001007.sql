-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/updated_at/alterations/alt0000001007


ALTER TABLE "agentic_db_app_public".notes_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


