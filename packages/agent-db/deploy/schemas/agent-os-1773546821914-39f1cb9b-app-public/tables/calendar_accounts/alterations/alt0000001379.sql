-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/alterations/alt0000001379
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_accounts 
  DISABLE ROW LEVEL SECURITY;

