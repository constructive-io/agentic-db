-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/note_id/alterations/alt0000002042


ALTER TABLE "agentic_db_app_public".note_chunks 
  ALTER COLUMN note_id DROP NOT NULL;


