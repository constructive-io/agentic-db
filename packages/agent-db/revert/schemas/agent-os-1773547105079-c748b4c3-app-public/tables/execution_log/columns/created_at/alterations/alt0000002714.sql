-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/created_at/alterations/alt0000002714




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".execution_log 
    ALTER COLUMN created_at DROP DEFAULT;



