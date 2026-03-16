-- Revert: schemas/agent_db_app_public/tables/contact_notes/columns/note_id/alterations/alt0000002412


ALTER TABLE "agent_db_app_public".contact_notes 
  ALTER COLUMN note_id DROP NOT NULL;


