-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/color/column


ALTER TABLE agentic_db_app_public.calendars 
  DROP COLUMN color RESTRICT;


