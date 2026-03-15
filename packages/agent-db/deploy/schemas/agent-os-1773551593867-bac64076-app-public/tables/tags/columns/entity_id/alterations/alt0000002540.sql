-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/entity_id/alterations/alt0000002540
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tags 
  ALTER COLUMN entity_id SET NOT NULL;

