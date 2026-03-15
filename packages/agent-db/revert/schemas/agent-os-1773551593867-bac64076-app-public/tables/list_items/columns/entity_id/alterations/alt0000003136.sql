-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/columns/entity_id/alterations/alt0000003136


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".list_items 
  ALTER COLUMN entity_id DROP NOT NULL;


