-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deal_contacts 
  ADD COLUMN entity_id uuid;

