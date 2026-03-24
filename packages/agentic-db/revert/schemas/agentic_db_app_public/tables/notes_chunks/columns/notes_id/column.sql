-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/notes_id/column


ALTER TABLE "agentic_db_app_public".notes_chunks 
  DROP COLUMN notes_id RESTRICT;


