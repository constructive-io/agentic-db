-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/content/alterations/alt0000001105


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".prompts 
  ADD COLUMN type text;

