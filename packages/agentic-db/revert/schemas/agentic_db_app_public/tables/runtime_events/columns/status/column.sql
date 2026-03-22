-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/status/column


ALTER TABLE agentic_db_app_public.runtime_events 
  DROP COLUMN status RESTRICT;


