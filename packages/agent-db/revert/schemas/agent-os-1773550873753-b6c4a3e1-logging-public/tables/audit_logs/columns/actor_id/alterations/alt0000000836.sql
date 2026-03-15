-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/actor_id/alterations/alt0000000836




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs 
    ALTER COLUMN actor_id DROP DEFAULT;



