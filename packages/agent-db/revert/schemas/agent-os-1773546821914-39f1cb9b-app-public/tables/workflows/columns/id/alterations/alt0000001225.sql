-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/id/alterations/alt0000001225


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  ALTER COLUMN id DROP NOT NULL;


