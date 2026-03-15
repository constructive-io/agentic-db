-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chats 
  ADD COLUMN id uuid;

