-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/updated_at/alterations/alt0000002677


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  ALTER COLUMN updated_at DROP NOT NULL;


