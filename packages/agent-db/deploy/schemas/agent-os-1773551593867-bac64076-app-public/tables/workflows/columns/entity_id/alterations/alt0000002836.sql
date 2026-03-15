-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/entity_id/alterations/alt0000002836
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/embedding/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  ALTER COLUMN entity_id SET NOT NULL;

