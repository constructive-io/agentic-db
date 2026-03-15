-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/is_active/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/version/alterations/alt0000001106


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".prompts 
  ADD COLUMN is_active bool;

