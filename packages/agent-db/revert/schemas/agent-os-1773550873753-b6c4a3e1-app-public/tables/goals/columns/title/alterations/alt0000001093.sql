-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/goals/columns/title/alterations/alt0000001093


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".goals 
  ALTER COLUMN title DROP NOT NULL;


