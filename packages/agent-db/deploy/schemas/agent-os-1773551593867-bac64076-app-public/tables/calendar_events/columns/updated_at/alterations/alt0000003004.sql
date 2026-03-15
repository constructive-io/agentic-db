-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/updated_at/alterations/alt0000003004
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/updated_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_events 
    ALTER COLUMN updated_at SET DEFAULT now();

