-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/columns/contact_id/alterations/alt0000003197
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/columns/contact_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expense_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

