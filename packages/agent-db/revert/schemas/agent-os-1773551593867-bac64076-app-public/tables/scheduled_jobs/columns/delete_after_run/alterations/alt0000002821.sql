-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/delete_after_run/alterations/alt0000002821




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
    ALTER COLUMN delete_after_run DROP DEFAULT;



