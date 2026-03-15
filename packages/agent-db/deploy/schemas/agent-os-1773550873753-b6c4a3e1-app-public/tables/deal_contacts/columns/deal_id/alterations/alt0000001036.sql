-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deal_contacts/columns/deal_id/alterations/alt0000001036
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deal_contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deal_contacts/columns/deal_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".deal_contacts 
  ALTER COLUMN deal_id SET NOT NULL;

