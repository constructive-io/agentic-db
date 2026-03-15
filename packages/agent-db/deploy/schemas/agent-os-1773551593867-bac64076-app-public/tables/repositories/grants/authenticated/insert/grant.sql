-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/policies/auth_del_entity_membership/policy


GRANT INSERT ON "agent-os-1773551593867-bac64076-app-public".repositories TO authenticated;

