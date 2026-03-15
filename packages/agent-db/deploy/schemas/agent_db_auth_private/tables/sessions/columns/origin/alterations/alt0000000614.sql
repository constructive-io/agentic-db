-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/origin/alterations/alt0000000614
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/origin/column



ALTER TABLE agent_db_auth_private.sessions 
    ALTER COLUMN origin SET DEFAULT jwt_public.current_origin();

