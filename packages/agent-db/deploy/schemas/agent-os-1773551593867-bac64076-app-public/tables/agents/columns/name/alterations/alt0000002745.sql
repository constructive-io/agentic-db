-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/name/alterations/alt0000002745
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/name/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/updated_at/alterations/alt0000002744


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agents 
  ALTER COLUMN name SET NOT NULL;

