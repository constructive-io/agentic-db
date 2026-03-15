-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/updated_at/alterations/alt0000002813




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
    ALTER COLUMN updated_at DROP DEFAULT;



