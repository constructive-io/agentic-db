-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/policies/auth_del_entity_membership/policy


GRANT SELECT ON "agent-os-1773546821914-39f1cb9b-app-public".tasks TO authenticated;

