-- Revert: schemas/agentic_db_app_public/tables/company_notes/columns/note_id/column


ALTER TABLE "agentic_db_app_public".company_notes 
  DROP COLUMN note_id RESTRICT;


