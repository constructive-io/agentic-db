-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/columns/embedding_text/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".messages 
  ADD COLUMN embedding vector(768);

