-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/id/alterations/alt0000002775
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/columns/embedding/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chat_messages 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

