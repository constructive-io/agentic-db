-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/content/alterations/alt0000002970


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
  ALTER COLUMN content DROP NOT NULL;


