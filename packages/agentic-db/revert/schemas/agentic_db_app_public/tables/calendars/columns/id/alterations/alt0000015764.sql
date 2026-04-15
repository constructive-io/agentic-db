-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/id/alterations/alt0000015764


ALTER TABLE agentic_db_app_public.calendars 
  ALTER COLUMN id DROP NOT NULL;


