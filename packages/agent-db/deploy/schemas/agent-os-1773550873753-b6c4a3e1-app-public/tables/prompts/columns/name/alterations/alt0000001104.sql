-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/name/alterations/alt0000001104
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/updated_at/alterations/alt0000001103


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".prompts 
  ALTER COLUMN name SET NOT NULL;

