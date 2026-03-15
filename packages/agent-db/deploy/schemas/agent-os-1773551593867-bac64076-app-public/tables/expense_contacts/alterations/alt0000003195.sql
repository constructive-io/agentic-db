-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/alterations/alt0000003195
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expense_contacts 
  DISABLE ROW LEVEL SECURITY;

