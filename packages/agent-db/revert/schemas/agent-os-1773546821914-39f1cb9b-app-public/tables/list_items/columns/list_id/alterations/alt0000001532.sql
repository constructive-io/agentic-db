-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/list_id/alterations/alt0000001532


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".list_items 
  ALTER COLUMN list_id DROP NOT NULL;


