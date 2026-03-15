-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/embedding_text/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  ADD COLUMN embedding vector(768);

