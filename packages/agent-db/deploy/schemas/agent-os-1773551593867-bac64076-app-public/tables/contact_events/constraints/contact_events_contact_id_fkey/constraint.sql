-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/constraints/contact_events_contact_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_companies/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_events 
  ADD CONSTRAINT contact_events_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent-os-1773551593867-bac64076-app-public".contacts (id) 
    ON DELETE CASCADE;

