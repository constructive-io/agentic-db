-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/title/alterations/alt0000001093


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".goals 
  ALTER COLUMN title DROP NOT NULL;


