-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/columns/entity_id/alterations/alt0000001374
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/columns/entity_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/email_accounts/columns/sync_state/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".messages 
  ALTER COLUMN entity_id SET NOT NULL;

