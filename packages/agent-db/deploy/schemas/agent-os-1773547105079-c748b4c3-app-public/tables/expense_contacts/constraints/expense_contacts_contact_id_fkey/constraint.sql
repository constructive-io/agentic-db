-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/constraints/expense_contacts_contact_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expense_contacts 
  ADD CONSTRAINT expense_contacts_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".contacts (id) 
    ON DELETE CASCADE;

