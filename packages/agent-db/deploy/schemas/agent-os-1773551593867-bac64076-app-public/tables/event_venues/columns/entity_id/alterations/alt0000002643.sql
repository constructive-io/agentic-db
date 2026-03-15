-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/columns/entity_id/alterations/alt0000002643
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_venues 
  ALTER COLUMN entity_id SET NOT NULL;

