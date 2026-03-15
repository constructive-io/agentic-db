-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/created_at/alterations/alt0000001348


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".files 
  ALTER COLUMN created_at DROP NOT NULL;


