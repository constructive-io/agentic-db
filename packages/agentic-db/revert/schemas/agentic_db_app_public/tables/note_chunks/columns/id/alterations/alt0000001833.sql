-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/id/alterations/alt0000001833


ALTER TABLE "agentic_db_app_public".note_chunks 
  ALTER COLUMN id DROP NOT NULL;


