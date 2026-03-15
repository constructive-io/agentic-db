-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/created_at/alterations/alt0000002837


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  ALTER COLUMN created_at DROP NOT NULL;


