-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/entity_id/alterations/alt0000002664
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".rules 
  ALTER COLUMN entity_id SET NOT NULL;

