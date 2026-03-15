-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/updated_at/alterations/alt0000002787


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".threads 
  ALTER COLUMN updated_at DROP NOT NULL;


