-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/start_at/alterations/alt0000001397
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/start_at/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/description/column


ALTER TABLE agent_db_app_public.calendar_events 
  ALTER COLUMN start_at SET NOT NULL;

