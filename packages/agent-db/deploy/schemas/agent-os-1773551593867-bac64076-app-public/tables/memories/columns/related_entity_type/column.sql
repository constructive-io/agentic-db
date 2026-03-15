-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/related_entity_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/source/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  ADD COLUMN related_entity_type text;

