-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_images/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".company_images TO authenticated;

