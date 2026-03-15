-- Deploy: schemas/agent_db_app_public/tables/inbound_events/columns/event_type/alterations/alt0000001241
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/inbound_events/table
-- requires: schemas/agent_db_app_public/tables/inbound_events/columns/event_type/column
-- requires: schemas/agent_db_app_public/tables/inbound_events/columns/source/alterations/alt0000001240


ALTER TABLE agent_db_app_public.inbound_events 
  ALTER COLUMN event_type SET NOT NULL;

