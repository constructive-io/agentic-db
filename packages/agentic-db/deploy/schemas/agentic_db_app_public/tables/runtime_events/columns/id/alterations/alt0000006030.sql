-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/columns/id/alterations/alt0000006030
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/timezone/alterations/alt0000006028


ALTER TABLE agentic_db_app_public.runtime_events 
  ALTER COLUMN id SET NOT NULL;

