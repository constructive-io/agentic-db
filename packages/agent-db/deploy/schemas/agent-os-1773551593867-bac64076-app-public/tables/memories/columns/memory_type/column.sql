-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/memory_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/content/alterations/alt0000002679


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  ADD COLUMN memory_type text;

