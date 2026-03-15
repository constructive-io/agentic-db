-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/updated_at/alterations/alt0000001079


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  ALTER COLUMN updated_at DROP NOT NULL;


