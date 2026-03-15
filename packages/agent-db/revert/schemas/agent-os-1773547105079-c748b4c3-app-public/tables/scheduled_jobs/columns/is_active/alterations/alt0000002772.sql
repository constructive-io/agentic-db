-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/is_active/alterations/alt0000002772




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".scheduled_jobs 
    ALTER COLUMN is_active DROP DEFAULT;



