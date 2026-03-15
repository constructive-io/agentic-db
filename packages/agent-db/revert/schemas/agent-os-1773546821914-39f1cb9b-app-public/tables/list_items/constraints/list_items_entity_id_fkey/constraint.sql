-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/constraints/list_items_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".list_items 
  DROP CONSTRAINT list_items_entity_id_fkey;


