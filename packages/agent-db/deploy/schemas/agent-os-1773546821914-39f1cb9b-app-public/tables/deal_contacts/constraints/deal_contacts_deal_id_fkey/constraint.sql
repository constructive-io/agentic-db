-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/constraints/deal_contacts_deal_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deal_contacts 
  ADD CONSTRAINT deal_contacts_deal_id_fkey 
    FOREIGN KEY(deal_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".deals (id) 
    ON DELETE CASCADE;

