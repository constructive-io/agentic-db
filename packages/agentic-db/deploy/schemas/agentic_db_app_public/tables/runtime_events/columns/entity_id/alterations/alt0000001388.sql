-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/columns/entity_id/alterations/alt0000001388
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/timezone/alterations/alt0000001384


ALTER TABLE "agentic_db_app_public".runtime_events 
  ALTER COLUMN entity_id SET NOT NULL;

