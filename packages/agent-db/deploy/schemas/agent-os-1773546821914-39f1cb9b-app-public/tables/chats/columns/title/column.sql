-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/updated_at/alterations/alt0000001163


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chats 
  ADD COLUMN title text;

