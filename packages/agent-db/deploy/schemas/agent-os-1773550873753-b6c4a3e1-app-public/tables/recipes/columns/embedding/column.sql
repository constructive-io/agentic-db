-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/embedding_text/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".recipes 
  ADD COLUMN embedding vector(768);

