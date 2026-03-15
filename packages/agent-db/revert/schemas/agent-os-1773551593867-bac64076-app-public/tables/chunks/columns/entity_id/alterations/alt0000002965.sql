-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/entity_id/alterations/alt0000002965


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


