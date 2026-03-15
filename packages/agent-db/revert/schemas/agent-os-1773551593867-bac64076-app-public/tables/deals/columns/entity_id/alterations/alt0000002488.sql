-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/entity_id/alterations/alt0000002488


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deals 
  ALTER COLUMN entity_id DROP NOT NULL;


