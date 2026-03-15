-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/columns/name/alterations/alt0000000599
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets 
  ALTER COLUMN name SET NOT NULL;

