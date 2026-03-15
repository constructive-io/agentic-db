-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/is_active/alterations/alt0000001211




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
    ALTER COLUMN is_active DROP DEFAULT;



