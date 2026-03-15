-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/run_count/alterations/alt0000001213




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".scheduled_jobs 
    ALTER COLUMN run_count DROP DEFAULT;



