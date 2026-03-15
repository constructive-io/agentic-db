-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/delete_after_run/alterations/alt0000001212
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/delete_after_run/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/is_active/alterations/alt0000001211



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
    ALTER COLUMN delete_after_run SET DEFAULT false;

