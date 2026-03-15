-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/name/alterations/alt0000002713


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".prompts 
  ALTER COLUMN name DROP NOT NULL;


