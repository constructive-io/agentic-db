-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/project_contacts/policies/auth_del_entity_membership/policy


GRANT INSERT ON "agent-os-1773550873753-b6c4a3e1-app-public".repositories TO authenticated;

