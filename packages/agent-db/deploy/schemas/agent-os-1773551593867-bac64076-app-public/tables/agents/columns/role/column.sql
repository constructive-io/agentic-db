-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/role/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/name/alterations/alt0000002745


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agents 
  ADD COLUMN role text;

