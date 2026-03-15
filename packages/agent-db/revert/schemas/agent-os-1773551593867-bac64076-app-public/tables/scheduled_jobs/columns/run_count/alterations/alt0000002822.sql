-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/run_count/alterations/alt0000002822




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
    ALTER COLUMN run_count DROP DEFAULT;



