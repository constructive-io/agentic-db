-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/columns/event_id/alterations/alt0000001025
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/columns/event_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_events 
  ALTER COLUMN event_id SET NOT NULL;

