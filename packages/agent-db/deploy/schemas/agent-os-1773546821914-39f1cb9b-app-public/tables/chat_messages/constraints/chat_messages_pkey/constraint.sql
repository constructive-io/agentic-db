-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/constraints/chat_messages_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chat_messages 
  ADD CONSTRAINT chat_messages_pkey PRIMARY KEY (id);

