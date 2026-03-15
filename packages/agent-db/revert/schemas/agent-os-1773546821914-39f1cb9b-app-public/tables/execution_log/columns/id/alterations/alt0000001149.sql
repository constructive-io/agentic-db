-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/id/alterations/alt0000001149


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  ALTER COLUMN id DROP NOT NULL;


