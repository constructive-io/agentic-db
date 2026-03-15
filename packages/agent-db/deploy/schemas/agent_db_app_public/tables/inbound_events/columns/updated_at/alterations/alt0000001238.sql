-- Deploy: schemas/agent_db_app_public/tables/inbound_events/columns/updated_at/alterations/alt0000001238
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/inbound_events/table
-- requires: schemas/agent_db_app_public/tables/inbound_events/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/inbound_events/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.inbound_events 
  ALTER COLUMN updated_at SET NOT NULL;

