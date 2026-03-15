-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/constraints/calendar_events_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_events 
  ADD CONSTRAINT calendar_events_pkey PRIMARY KEY (id);

