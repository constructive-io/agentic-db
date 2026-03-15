-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/id/alterations/alt0000002824
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  ALTER COLUMN id SET NOT NULL;

