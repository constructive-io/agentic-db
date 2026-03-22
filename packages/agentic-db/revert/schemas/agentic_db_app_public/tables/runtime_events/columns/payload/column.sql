-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/payload/column


ALTER TABLE agentic_db_app_public.runtime_events 
  DROP COLUMN payload RESTRICT;


