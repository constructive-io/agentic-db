-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/columns/updated_at/alterations/alt0000001230


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflows 
  ALTER COLUMN updated_at DROP NOT NULL;


