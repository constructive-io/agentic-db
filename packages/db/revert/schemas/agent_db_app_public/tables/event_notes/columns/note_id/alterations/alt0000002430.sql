-- Revert: schemas/agent_db_app_public/tables/event_notes/columns/note_id/alterations/alt0000002430


ALTER TABLE "agent_db_app_public".event_notes 
  ALTER COLUMN note_id DROP NOT NULL;


