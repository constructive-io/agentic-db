-- Deploy: schemas/agent_db_app_public/tables/company_events/constraints/company_events_event_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/company_events/table
-- requires: schemas/agent_db_app_public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_events 
  ADD CONSTRAINT company_events_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES "agent_db_app_public".events (id) 
    ON DELETE CASCADE;

