-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/entity_id/alterations/alt0000002529


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ALTER COLUMN entity_id DROP NOT NULL;


