-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/columns/email_account_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/columns/updated_at/alterations/alt0000001378


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".messages 
  ADD COLUMN email_account_id uuid;

