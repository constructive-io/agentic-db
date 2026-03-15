-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_images/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_images/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_images/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agent-os-1773550873753-b6c4a3e1-app-public".event_images TO authenticated;

