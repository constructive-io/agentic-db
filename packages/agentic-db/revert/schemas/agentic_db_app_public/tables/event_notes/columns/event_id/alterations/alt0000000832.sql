-- Revert: schemas/agentic_db_app_public/tables/event_notes/columns/event_id/alterations/alt0000000832


ALTER TABLE agentic_db_app_public.event_notes 
  ALTER COLUMN event_id DROP NOT NULL;


