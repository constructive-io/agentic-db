-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/columns/venue_id/alterations/alt0000001031
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/columns/venue_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_venues 
  ALTER COLUMN venue_id SET NOT NULL;

