-- Deploy: schemas/agent_db_app_public/tables/contact_events/constraints/contact_events_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contact_events/table
-- requires: schemas/agent_db_app_public/tables/contact_companies/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".contact_events 
  ADD CONSTRAINT contact_events_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent_db_app_public".contacts (id) 
    ON DELETE CASCADE;

