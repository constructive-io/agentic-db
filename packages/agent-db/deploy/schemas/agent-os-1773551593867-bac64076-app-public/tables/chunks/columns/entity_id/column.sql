-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/hash/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
  ADD COLUMN entity_id uuid;

