-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/columns/event_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_venues 
  ADD COLUMN event_id uuid;

