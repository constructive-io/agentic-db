-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/id/alterations/alt0000013511


ALTER TABLE agentic_db_app_public.calendars 
  ALTER COLUMN id DROP NOT NULL;


