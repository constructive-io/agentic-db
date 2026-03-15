-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/created_at/alterations/alt0000001100


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
  ALTER COLUMN created_at DROP NOT NULL;


