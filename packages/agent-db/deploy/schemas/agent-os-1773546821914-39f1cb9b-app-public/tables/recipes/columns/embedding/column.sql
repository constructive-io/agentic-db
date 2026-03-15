-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/embedding_text/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".recipes 
  ADD COLUMN embedding vector(768);

