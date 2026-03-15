-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/list_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".list_items 
  DROP COLUMN list_id RESTRICT;


