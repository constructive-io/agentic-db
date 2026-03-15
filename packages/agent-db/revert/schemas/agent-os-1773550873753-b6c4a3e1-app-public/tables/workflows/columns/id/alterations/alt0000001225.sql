-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflows/columns/id/alterations/alt0000001225


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".workflows 
  ALTER COLUMN id DROP NOT NULL;


