-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/constraints/expense_contacts_expense_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expense_contacts 
  ADD CONSTRAINT expense_contacts_expense_id_fkey 
    FOREIGN KEY(expense_id) 
    REFERENCES "agent-os-1773551593867-bac64076-app-public".expenses (id) 
    ON DELETE CASCADE;

