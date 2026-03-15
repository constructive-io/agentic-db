-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/columns/list_id/alterations/alt0000003141


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".list_items 
  ALTER COLUMN list_id DROP NOT NULL;


