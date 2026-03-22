-- Revert: schemas/agentic_db_app_public/tables/deal_notes/columns/note_id/alterations/alt0000003001


ALTER TABLE agentic_db_app_public.deal_notes 
  ALTER COLUMN note_id DROP NOT NULL;


