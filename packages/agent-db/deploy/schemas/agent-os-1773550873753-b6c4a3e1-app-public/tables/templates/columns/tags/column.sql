-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/is_active/alterations/alt0000001561


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".templates 
  ADD COLUMN tags citext[];

