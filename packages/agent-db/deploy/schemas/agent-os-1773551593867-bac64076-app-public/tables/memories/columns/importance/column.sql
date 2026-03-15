-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/importance/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/agent_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  ADD COLUMN importance int;

