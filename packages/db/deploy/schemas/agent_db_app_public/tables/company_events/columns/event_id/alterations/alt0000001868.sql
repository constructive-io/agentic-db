-- Deploy: schemas/agent_db_app_public/tables/company_events/columns/event_id/alterations/alt0000001868
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_events/table
-- requires: schemas/agent_db_app_public/tables/company_events/columns/event_id/column
-- requires: schemas/agent_db_app_public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_events 
  ALTER COLUMN event_id SET NOT NULL;

