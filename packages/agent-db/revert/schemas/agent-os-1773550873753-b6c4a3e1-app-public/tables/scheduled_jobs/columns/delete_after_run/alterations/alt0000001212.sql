-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/delete_after_run/alterations/alt0000001212




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".scheduled_jobs 
    ALTER COLUMN delete_after_run DROP DEFAULT;



