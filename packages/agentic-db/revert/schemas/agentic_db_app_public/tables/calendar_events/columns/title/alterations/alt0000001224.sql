-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/title/alterations/alt0000001224


ALTER TABLE agentic_db_app_public.calendar_events 
  ALTER COLUMN title DROP NOT NULL;


