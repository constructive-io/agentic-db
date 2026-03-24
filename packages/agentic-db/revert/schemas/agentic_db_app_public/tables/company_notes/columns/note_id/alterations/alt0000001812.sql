-- Revert: schemas/agentic_db_app_public/tables/company_notes/columns/note_id/alterations/alt0000001812


ALTER TABLE "agentic_db_app_public".company_notes 
  ALTER COLUMN note_id DROP NOT NULL;


