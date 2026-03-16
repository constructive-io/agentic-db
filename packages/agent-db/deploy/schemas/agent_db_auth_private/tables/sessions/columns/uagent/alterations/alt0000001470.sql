-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/uagent/alterations/alt0000001470
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/uagent/column



ALTER TABLE "agent_db_auth_private".sessions 
    ALTER COLUMN uagent SET DEFAULT jwt_public.current_user_agent();

