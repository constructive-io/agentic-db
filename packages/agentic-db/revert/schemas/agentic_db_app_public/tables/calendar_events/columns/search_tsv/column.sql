-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/search_tsv/column


ALTER TABLE agentic_db_app_public.calendar_events 
  DROP COLUMN search_tsv RESTRICT;


