-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_events/columns/id/alterations/alt0000001020
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_events/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_events/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_companies/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_events 
  ALTER COLUMN id SET NOT NULL;

