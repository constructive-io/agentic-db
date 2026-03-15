-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/updated_at/alterations/alt0000002839


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  ALTER COLUMN updated_at DROP NOT NULL;


