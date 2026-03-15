-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/columns/updated_at/alterations/alt0000003139


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".list_items 
  ALTER COLUMN updated_at DROP NOT NULL;


