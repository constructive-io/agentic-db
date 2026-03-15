-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/created_at/alterations/alt0000002814




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
    ALTER COLUMN created_at DROP DEFAULT;



