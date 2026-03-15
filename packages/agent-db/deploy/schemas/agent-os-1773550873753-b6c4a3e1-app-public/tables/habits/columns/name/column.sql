-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/columns/updated_at/alterations/alt0000001500


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habits 
  ADD COLUMN name text;

