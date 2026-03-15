-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/agent_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/memory_category/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  ADD COLUMN agent_id uuid;

