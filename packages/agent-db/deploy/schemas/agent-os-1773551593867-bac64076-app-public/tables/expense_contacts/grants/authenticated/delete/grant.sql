-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_event_contacts/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".expense_contacts TO authenticated;

