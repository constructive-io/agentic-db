-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/entity_id/alterations/alt0000002730
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/error/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  ALTER COLUMN entity_id SET NOT NULL;

