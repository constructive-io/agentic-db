-- Revert: schemas/agentic_db_app_public/tables/events/columns/notes_text/column


ALTER TABLE agentic_db_app_public.events 
  DROP COLUMN notes_text RESTRICT;


