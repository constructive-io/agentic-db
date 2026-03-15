-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/updated_at/alterations/alt0000001134


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agents 
  ALTER COLUMN updated_at DROP NOT NULL;


