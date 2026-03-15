-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/columns/created_at/alterations/alt0000001153




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".execution_log 
    ALTER COLUMN created_at DROP DEFAULT;



