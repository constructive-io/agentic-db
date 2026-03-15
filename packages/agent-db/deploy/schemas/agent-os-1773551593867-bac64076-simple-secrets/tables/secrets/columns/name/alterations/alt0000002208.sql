-- Deploy: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/columns/name/alterations/alt0000002208
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/table
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-simple-secrets".secrets 
  ALTER COLUMN name SET NOT NULL;

