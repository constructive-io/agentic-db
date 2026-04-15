-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/updated_at/column


ALTER TABLE agentic_db_app_public.calendars 
  DROP COLUMN updated_at RESTRICT;


