-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/title/alterations/alt0000002789


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".threads 
  ALTER COLUMN title DROP NOT NULL;


