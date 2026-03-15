-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/updated_at/alterations/alt0000002711


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  ALTER COLUMN updated_at DROP NOT NULL;


