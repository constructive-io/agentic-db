-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/event_type/column


ALTER TABLE "agentic_db_app_public".runtime_events 
  DROP COLUMN event_type RESTRICT;


