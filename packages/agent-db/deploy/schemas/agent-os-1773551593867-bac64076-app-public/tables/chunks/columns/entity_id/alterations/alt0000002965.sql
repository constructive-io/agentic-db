-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/entity_id/alterations/alt0000002965
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/hash/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
  ALTER COLUMN entity_id SET NOT NULL;

