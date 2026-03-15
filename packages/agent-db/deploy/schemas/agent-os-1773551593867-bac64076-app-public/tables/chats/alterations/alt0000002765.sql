-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/alterations/alt0000002765
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chats 
  DISABLE ROW LEVEL SECURITY;

