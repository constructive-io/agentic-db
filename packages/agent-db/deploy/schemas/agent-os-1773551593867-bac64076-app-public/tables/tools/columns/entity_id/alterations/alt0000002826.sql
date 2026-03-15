-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/entity_id/alterations/alt0000002826
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  ALTER COLUMN entity_id SET NOT NULL;

