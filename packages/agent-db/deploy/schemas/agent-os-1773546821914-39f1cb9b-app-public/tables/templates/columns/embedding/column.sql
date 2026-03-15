-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/embedding_text/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
  ADD COLUMN embedding vector(768);

