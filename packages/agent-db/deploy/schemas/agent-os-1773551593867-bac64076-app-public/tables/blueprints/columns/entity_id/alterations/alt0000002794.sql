-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/entity_id/alterations/alt0000002794
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/embedding/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".blueprints 
  ALTER COLUMN entity_id SET NOT NULL;

