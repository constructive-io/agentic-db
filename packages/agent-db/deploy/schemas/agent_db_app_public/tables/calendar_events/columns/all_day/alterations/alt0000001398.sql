-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/all_day/alterations/alt0000001398
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/end_at/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/all_day/column



ALTER TABLE agent_db_app_public.calendar_events 
    ALTER COLUMN all_day SET DEFAULT false;

