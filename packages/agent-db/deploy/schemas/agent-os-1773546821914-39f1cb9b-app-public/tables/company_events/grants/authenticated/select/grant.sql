-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/policies/auth_del_entity_membership/policy


GRANT SELECT ON "agent-os-1773546821914-39f1cb9b-app-public".company_events TO authenticated;

