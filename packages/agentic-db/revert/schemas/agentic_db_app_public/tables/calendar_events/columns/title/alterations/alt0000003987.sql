-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/title/alterations/alt0000003987


ALTER TABLE agentic_db_app_public.calendar_events 
  ALTER COLUMN title DROP NOT NULL;


