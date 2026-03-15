-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/entity_id/alterations/alt0000002685
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  ALTER COLUMN entity_id SET NOT NULL;

