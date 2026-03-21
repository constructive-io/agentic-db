-- Revert: schemas/agentic_db_app_public/tables/event_notes/constraints/event_notes_event_id_fkey/constraint


ALTER TABLE agentic_db_app_public.event_notes 
  DROP CONSTRAINT event_notes_event_id_fkey;


