-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/projects/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/projects/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/projects/columns/due_date/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".projects 
  ADD COLUMN tags citext[];

