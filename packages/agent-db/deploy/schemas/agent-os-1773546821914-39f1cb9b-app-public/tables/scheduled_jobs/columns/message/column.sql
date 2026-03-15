-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/message/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/command/alterations/alt0000001210


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
  ADD COLUMN message text;

