-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/alterations/alt0000001371
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/sync_state/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  DISABLE ROW LEVEL SECURITY;

