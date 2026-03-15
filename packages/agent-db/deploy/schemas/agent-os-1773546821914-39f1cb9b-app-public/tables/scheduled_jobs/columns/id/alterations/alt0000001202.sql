-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/id/alterations/alt0000001202
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/logs_path/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

