-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_events/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".company_events TO authenticated;

