-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/task/alterations/alt0000002873
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/task/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/session_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
  ALTER COLUMN task SET NOT NULL;

