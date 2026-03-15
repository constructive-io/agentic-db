-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/created_at/alterations/alt0000001218


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  ALTER COLUMN created_at DROP NOT NULL;


