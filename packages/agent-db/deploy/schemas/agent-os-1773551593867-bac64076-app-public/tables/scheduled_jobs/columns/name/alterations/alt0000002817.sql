-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/name/alterations/alt0000002817
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/name/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/updated_at/alterations/alt0000002816


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  ALTER COLUMN name SET NOT NULL;

