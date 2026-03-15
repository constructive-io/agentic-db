-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/id/alterations/alt0000002672
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  ALTER COLUMN id SET NOT NULL;

