-- Revert: schemas/agentic_db_app_public/tables/events/columns/city/column


ALTER TABLE agentic_db_app_public.events 
  DROP COLUMN city RESTRICT;


