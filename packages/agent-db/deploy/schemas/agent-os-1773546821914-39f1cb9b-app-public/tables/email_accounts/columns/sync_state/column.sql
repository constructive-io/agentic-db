-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/sync_state/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/provider/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".email_accounts 
  ADD COLUMN sync_state jsonb;

