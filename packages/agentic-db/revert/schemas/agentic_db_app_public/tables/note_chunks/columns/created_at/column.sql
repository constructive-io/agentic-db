-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".note_chunks 
  DROP COLUMN created_at RESTRICT;


