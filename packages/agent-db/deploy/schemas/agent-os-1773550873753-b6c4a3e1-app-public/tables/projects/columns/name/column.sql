-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/projects/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/projects/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/projects/columns/updated_at/alterations/alt0000001316


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".projects 
  ADD COLUMN name text;

