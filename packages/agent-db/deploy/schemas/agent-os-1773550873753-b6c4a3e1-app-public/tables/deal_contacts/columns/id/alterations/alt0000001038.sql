-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deal_contacts/columns/id/alterations/alt0000001038
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deal_contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deal_contacts/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".deal_contacts 
  ALTER COLUMN id SET NOT NULL;

