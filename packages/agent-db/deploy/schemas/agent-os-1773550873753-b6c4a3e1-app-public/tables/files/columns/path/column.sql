-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/files/columns/path/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/files/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/files/columns/repository_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".files 
  ADD COLUMN path text;

