-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/columns/event_type/alterations/alt0000001393
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/event_type/column
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/updated_at/alterations/alt0000001392


ALTER TABLE "agentic_db_app_public".runtime_events 
  ALTER COLUMN event_type SET NOT NULL;

