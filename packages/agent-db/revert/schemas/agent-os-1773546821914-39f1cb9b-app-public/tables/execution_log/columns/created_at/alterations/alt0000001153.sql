-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/created_at/alterations/alt0000001153




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
    ALTER COLUMN created_at DROP DEFAULT;



