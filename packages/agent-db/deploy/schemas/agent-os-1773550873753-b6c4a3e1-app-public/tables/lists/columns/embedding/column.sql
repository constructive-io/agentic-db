-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/lists/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/lists/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/lists/columns/embedding_text/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".lists 
  ADD COLUMN embedding vector(768);

