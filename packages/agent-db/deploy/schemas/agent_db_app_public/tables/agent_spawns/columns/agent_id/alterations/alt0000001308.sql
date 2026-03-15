-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/agent_id/alterations/alt0000001308
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/agent_id/column
-- requires: schemas/agent_db_app_public/tables/session_archives/constraints/session_archives_session_id_fkey/constraint


ALTER TABLE agent_db_app_public.agent_spawns 
  ALTER COLUMN agent_id SET NOT NULL;

