-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/columns/id/alterations/alt0000002981
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/columns/sync_state/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".messages 
  ALTER COLUMN id SET NOT NULL;

