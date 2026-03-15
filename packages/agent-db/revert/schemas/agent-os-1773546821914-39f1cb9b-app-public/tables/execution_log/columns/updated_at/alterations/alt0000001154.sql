-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/updated_at/alterations/alt0000001154


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  ALTER COLUMN updated_at DROP NOT NULL;


