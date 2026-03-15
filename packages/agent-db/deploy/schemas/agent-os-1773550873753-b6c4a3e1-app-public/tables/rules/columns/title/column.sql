-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/rules/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/rules/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/rules/columns/updated_at/alterations/alt0000001059


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".rules 
  ADD COLUMN title text;

