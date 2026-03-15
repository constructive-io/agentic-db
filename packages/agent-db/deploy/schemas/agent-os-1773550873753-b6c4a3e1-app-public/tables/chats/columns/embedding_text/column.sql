-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chats/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chats/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chats/columns/started_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chats 
  ADD COLUMN embedding_text text;

