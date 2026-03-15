-- Revert: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/actor_id/alterations/alt0000002397




ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
    ALTER COLUMN actor_id DROP DEFAULT;



