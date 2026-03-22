-- Revert: schemas/agentic_db_app_public/tables/events/columns/name/column


ALTER TABLE agentic_db_app_public.events 
  DROP COLUMN name RESTRICT;


