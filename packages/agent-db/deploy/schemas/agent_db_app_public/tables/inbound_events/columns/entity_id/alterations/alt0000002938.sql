-- Deploy: schemas/agent_db_app_public/tables/inbound_events/columns/entity_id/alterations/alt0000002938
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/inbound_events/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/approved_at/column
-- requires: schemas/agent_db_app_public/tables/inbound_events/columns/entity_id/column


ALTER TABLE "agent_db_app_public".inbound_events 
  ALTER COLUMN entity_id SET NOT NULL;

