-- Revert: schemas/agentic_db_app_public/tables/runtime_events/constraints/runtime_events_pkey/constraint


ALTER TABLE agentic_db_app_public.runtime_events 
  DROP CONSTRAINT runtime_events_pkey;


