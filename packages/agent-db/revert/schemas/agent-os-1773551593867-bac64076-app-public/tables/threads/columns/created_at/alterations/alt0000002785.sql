-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/created_at/alterations/alt0000002785


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".threads 
  ALTER COLUMN created_at DROP NOT NULL;


