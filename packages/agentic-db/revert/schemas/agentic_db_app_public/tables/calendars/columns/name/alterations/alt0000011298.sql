-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/name/alterations/alt0000011298


ALTER TABLE agentic_db_app_public.calendars 
  ALTER COLUMN name DROP NOT NULL;


