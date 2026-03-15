-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/type/alterations/alt0000002535


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ALTER COLUMN type DROP NOT NULL;


