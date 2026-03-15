-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/created_at/alterations/alt0000000880


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deals 
  ALTER COLUMN created_at DROP NOT NULL;


