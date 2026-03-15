-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/content/alterations/alt0000002679


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  ALTER COLUMN content DROP NOT NULL;


