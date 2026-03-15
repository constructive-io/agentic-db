-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/email_account_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/updated_at/alterations/alt0000001378


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  ADD COLUMN email_account_id uuid;

