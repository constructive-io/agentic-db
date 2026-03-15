-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/color/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/name/alterations/alt0000000936


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tags 
  ADD COLUMN color text;

