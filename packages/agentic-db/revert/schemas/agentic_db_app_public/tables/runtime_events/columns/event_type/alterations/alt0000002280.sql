-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/event_type/alterations/alt0000002280


ALTER TABLE "agentic_db_app_public".runtime_events 
  ALTER COLUMN event_type DROP NOT NULL;


