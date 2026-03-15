-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/created_at/alterations/alt0000001176


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  ALTER COLUMN created_at DROP NOT NULL;


