-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/embedding_text/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".lists 
  ADD COLUMN embedding vector(768);

