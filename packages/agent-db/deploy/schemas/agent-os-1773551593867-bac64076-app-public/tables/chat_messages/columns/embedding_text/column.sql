-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/tool_calls/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chat_messages 
  ADD COLUMN embedding_text text;

