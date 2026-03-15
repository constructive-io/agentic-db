-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/created_at/alterations/alt0000001077


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skills 
  ALTER COLUMN created_at DROP NOT NULL;


