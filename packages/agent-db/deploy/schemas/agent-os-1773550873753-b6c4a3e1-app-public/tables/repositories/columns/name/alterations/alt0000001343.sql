-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/columns/name/alterations/alt0000001343
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/columns/updated_at/alterations/alt0000001342


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".repositories 
  ALTER COLUMN name SET NOT NULL;

