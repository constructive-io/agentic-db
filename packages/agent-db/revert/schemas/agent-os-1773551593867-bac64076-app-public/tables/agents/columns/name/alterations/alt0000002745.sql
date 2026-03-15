-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/name/alterations/alt0000002745


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agents 
  ALTER COLUMN name DROP NOT NULL;


