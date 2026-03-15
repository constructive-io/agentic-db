-- Deploy: schemas/agent_db_app_public/tables/inbound_events/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/inbound_events/table
-- requires: schemas/agent_db_app_public/tables/inbound_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".inbound_events 
  ADD COLUMN created_at timestamptz;

