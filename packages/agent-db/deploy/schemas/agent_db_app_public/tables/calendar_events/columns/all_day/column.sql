-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/all_day/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/end_at/column


ALTER TABLE agent_db_app_public.calendar_events 
  ADD COLUMN all_day bool;

