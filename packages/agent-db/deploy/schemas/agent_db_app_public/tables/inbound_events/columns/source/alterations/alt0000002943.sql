-- Deploy: schemas/agent_db_app_public/tables/inbound_events/columns/source/alterations/alt0000002943
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/inbound_events/table
-- requires: schemas/agent_db_app_public/tables/inbound_events/columns/source/column
-- requires: schemas/agent_db_app_public/tables/inbound_events/columns/updated_at/alterations/alt0000002942


ALTER TABLE "agent_db_app_public".inbound_events 
  ALTER COLUMN source SET NOT NULL;

