-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/embedding_text/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".threads 
  ADD COLUMN embedding vector(768);

