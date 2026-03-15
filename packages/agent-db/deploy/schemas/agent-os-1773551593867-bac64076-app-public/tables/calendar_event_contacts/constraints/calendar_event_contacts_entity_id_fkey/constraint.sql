-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/constraints/calendar_event_contacts_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_event_contacts 
  ADD CONSTRAINT calendar_event_contacts_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;

