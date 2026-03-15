-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/columns/name/alterations/alt0000000599
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/columns/name/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-simple-secrets".secrets 
  ALTER COLUMN name SET NOT NULL;

