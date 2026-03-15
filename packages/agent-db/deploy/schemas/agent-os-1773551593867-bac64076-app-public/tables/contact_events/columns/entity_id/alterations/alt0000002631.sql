-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/columns/entity_id/alterations/alt0000002631
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_companies/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_events 
  ALTER COLUMN entity_id SET NOT NULL;

