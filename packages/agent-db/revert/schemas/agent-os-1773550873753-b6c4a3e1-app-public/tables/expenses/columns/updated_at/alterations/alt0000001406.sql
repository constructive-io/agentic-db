-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/columns/updated_at/alterations/alt0000001406


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".expenses 
  ALTER COLUMN updated_at DROP NOT NULL;


