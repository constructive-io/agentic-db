-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/schedule_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/name/alterations/alt0000001208


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
  ADD COLUMN schedule_type text;

