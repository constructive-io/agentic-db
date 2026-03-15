-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/entity_id/alterations/alt0000003154


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  ALTER COLUMN entity_id DROP NOT NULL;


