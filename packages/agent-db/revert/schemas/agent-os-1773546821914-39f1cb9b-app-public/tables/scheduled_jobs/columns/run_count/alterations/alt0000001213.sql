-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/run_count/alterations/alt0000001213




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
    ALTER COLUMN run_count DROP DEFAULT;



