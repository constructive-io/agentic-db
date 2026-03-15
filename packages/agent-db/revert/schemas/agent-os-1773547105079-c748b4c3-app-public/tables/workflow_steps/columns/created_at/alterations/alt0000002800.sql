-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflow_steps/columns/created_at/alterations/alt0000002800




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflow_steps 
    ALTER COLUMN created_at DROP DEFAULT;



