-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/agent_id/alterations/alt0000001308
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/agent_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/constraints/session_archives_session_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agent_spawns 
  ALTER COLUMN agent_id SET NOT NULL;

