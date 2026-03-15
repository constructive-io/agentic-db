-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/created_at/alterations/alt0000001089


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".goals 
  ALTER COLUMN created_at DROP NOT NULL;


