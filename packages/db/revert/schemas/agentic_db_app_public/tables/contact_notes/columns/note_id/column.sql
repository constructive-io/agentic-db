-- Revert: schemas/agentic_db_app_public/tables/contact_notes/columns/note_id/column


ALTER TABLE "agentic_db_app_public".contact_notes 
  DROP COLUMN note_id RESTRICT;


