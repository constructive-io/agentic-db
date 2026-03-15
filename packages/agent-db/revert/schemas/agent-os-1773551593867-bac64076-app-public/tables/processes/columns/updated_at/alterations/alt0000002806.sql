-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/updated_at/alterations/alt0000002806


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
  ALTER COLUMN updated_at DROP NOT NULL;


