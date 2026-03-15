-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/entity_id/alterations/alt0000002776
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/columns/embedding/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chat_messages 
  ALTER COLUMN entity_id SET NOT NULL;

