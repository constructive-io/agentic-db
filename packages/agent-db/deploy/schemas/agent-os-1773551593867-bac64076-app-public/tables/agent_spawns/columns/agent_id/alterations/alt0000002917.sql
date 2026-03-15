-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/agent_id/alterations/alt0000002917
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/agent_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/constraints/session_archives_session_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_spawns 
  ALTER COLUMN agent_id SET NOT NULL;

