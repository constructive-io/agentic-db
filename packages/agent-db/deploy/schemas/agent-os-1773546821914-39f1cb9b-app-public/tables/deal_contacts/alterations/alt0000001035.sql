-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/alterations/alt0000001035
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deal_contacts 
  DISABLE ROW LEVEL SECURITY;

