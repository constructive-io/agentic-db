-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/columns/updated_at/alterations/alt0000001154


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".execution_log 
  ALTER COLUMN updated_at DROP NOT NULL;


