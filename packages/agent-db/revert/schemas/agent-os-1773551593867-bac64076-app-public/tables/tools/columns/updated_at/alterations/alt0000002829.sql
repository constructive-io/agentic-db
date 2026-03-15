-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/updated_at/alterations/alt0000002829


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  ALTER COLUMN updated_at DROP NOT NULL;


