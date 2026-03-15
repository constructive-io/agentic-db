-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/calendar_account_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/updated_at/alterations/alt0000003004


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_events 
  ADD COLUMN calendar_account_id uuid;

