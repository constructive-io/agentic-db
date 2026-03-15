-- Deploy: schemas/agent_db_app_public/tables/events/columns/started_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/city/column


ALTER TABLE agent_db_app_public.events 
  ADD COLUMN started_at timestamptz;

