-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/name/alterations/alt0000001081
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/updated_at/alterations/alt0000001080


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skills 
  ALTER COLUMN name SET NOT NULL;

