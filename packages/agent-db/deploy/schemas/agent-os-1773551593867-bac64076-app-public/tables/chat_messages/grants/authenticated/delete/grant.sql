-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/columns/embedding/column


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".chat_messages TO authenticated;

