-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/name/alterations/alt0000001136
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/updated_at/alterations/alt0000001135


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agents 
  ALTER COLUMN name SET NOT NULL;

