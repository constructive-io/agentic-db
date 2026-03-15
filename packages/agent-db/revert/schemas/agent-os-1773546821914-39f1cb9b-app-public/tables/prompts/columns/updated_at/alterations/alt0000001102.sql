-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/columns/updated_at/alterations/alt0000001102


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".prompts 
  ALTER COLUMN updated_at DROP NOT NULL;


