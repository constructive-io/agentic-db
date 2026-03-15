-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/columns/title/alterations/alt0000001180


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".threads 
  ALTER COLUMN title DROP NOT NULL;


