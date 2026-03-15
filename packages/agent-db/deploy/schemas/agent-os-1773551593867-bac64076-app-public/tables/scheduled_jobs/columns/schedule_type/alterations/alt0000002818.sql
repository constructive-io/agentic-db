-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/schedule_type/alterations/alt0000002818
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/schedule_type/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/name/alterations/alt0000002817


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  ALTER COLUMN schedule_type SET NOT NULL;

