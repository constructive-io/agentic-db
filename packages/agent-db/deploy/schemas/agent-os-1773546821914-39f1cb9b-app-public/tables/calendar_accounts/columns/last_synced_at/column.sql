-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/columns/last_synced_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/columns/sync_token/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_accounts 
  ADD COLUMN last_synced_at timestamptz;

