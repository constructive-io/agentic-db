-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/created_at/alterations/alt0000001357


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  ALTER COLUMN created_at DROP NOT NULL;


