-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/caption/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".images 
  ADD COLUMN embedding vector(768);

