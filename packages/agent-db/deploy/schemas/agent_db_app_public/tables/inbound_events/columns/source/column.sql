-- Deploy: schemas/agent_db_app_public/tables/inbound_events/columns/source/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/inbound_events/table
-- requires: schemas/agent_db_app_public/tables/inbound_events/columns/updated_at/alterations/alt0000001239


ALTER TABLE agent_db_app_public.inbound_events 
  ADD COLUMN source text;

