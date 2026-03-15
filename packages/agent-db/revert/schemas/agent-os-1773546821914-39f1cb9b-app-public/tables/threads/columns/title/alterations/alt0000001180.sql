-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/title/alterations/alt0000001180


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  ALTER COLUMN title DROP NOT NULL;


