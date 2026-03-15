-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/entity_id/alterations/alt0000001527


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".list_items 
  ALTER COLUMN entity_id DROP NOT NULL;


