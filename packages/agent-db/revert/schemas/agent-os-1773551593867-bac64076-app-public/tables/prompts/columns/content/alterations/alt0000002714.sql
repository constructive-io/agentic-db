-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/content/alterations/alt0000002714


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  ALTER COLUMN content DROP NOT NULL;


