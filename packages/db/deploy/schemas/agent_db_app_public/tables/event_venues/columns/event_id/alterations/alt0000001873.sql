-- Deploy: schemas/agent_db_app_public/tables/event_venues/columns/event_id/alterations/alt0000001873
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_venues/table
-- requires: schemas/agent_db_app_public/tables/event_venues/columns/event_id/column
-- requires: schemas/agent_db_app_public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".event_venues 
  ALTER COLUMN event_id SET NOT NULL;

