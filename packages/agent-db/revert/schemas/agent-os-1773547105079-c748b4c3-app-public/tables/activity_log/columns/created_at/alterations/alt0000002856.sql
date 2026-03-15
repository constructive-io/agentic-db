-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/columns/created_at/alterations/alt0000002856




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".activity_log 
    ALTER COLUMN created_at DROP DEFAULT;



