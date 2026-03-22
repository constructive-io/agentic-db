-- Deploy: schemas/agentic_db_app_public/tables/runtime_events/alterations/alt0000006029
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_events/table
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/columns/timezone/alterations/alt0000006028


ALTER TABLE agentic_db_app_public.runtime_events 
  DISABLE ROW LEVEL SECURITY;

