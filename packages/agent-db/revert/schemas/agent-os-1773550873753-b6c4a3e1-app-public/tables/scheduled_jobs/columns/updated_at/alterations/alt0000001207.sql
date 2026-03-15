-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/updated_at/alterations/alt0000001207




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".scheduled_jobs 
    ALTER COLUMN updated_at DROP DEFAULT;



