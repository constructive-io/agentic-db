-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".list_items 
  DROP COLUMN entity_id RESTRICT;


