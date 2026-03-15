-- Deploy: schemas/agent_db_app_public/tables/events/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/updated_at/alterations/alt0000000894


ALTER TABLE agent_db_app_public.events 
  ADD COLUMN name text;

