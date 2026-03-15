-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/updated_at/alterations/alt0000002764




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
    ALTER COLUMN updated_at DROP DEFAULT;



