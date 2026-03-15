-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/columns/contact_id/alterations/alt0000001037
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/columns/contact_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deal_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

