-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_runs/columns/status/alterations/alt0000002815




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_runs 
    ALTER COLUMN status DROP DEFAULT;



