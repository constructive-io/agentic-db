-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/content/alterations/alt0000002524


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notes 
  ALTER COLUMN content DROP NOT NULL;


