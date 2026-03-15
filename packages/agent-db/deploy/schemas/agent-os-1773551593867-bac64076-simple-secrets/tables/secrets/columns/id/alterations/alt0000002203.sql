-- Deploy: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/columns/id/alterations/alt0000002203
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/table
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-simple-secrets".secrets 
  ALTER COLUMN id SET NOT NULL;

