-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/columns/id/alterations/alt0000000594
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-simple-secrets".secrets 
  ALTER COLUMN id SET NOT NULL;

