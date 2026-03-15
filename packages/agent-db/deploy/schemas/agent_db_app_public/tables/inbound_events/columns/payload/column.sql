-- Deploy: schemas/agent_db_app_public/tables/inbound_events/columns/payload/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/inbound_events/table
-- requires: schemas/agent_db_app_public/tables/inbound_events/columns/event_type/alterations/alt0000002944


ALTER TABLE "agent_db_app_public".inbound_events 
  ADD COLUMN payload jsonb;

