-- Revert: schemas/agent_db_app_public/tables/event_notes/columns/event_id/alterations/alt0000002429


ALTER TABLE "agent_db_app_public".event_notes 
  ALTER COLUMN event_id DROP NOT NULL;


