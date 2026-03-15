-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/entity_id/alterations/alt0000003154
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/source_entity_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  ALTER COLUMN entity_id SET NOT NULL;

