-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/name/alterations/alt0000001208
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/updated_at/alterations/alt0000001207


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".scheduled_jobs 
  ALTER COLUMN name SET NOT NULL;

