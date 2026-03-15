-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/updated_at/alterations/alt0000001406


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".expenses 
  ALTER COLUMN updated_at DROP NOT NULL;


