-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/created_at/alterations/alt0000001132


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agents 
  ALTER COLUMN created_at DROP NOT NULL;


