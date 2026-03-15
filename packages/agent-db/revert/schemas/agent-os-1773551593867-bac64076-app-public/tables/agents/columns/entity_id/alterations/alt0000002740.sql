-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/entity_id/alterations/alt0000002740


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agents 
  ALTER COLUMN entity_id DROP NOT NULL;


