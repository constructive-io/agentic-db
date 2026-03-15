-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/id/alterations/alt0000001174
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/embedding/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

