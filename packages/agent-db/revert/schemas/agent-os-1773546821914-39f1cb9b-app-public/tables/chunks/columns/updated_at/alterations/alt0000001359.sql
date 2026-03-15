-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/updated_at/alterations/alt0000001359


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


