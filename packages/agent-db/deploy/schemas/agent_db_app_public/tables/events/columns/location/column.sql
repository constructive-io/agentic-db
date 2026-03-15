-- Deploy: schemas/agent_db_app_public/tables/events/columns/location/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/event_type/column


ALTER TABLE agent_db_app_public.events 
  ADD COLUMN location text;

