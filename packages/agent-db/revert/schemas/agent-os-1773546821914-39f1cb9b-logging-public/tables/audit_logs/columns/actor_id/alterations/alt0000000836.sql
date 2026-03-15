-- Revert: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/actor_id/alterations/alt0000000836




ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
    ALTER COLUMN actor_id DROP DEFAULT;



