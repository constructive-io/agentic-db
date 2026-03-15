-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/ref_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".list_items 
  DROP COLUMN ref_id RESTRICT;


