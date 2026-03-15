-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/updated_at/alterations/alt0000003015


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expenses 
  ALTER COLUMN updated_at DROP NOT NULL;


