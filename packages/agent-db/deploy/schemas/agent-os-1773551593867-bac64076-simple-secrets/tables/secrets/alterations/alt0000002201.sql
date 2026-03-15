-- Deploy: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/alterations/alt0000002201
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/table


ALTER TABLE "agent-os-1773551593867-bac64076-simple-secrets".secrets 
  DISABLE ROW LEVEL SECURITY;

