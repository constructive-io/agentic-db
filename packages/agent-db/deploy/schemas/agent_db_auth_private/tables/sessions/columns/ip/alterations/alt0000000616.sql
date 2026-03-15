-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/ip/alterations/alt0000000616
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/ip/column



ALTER TABLE agent_db_auth_private.sessions 
    ALTER COLUMN ip SET DEFAULT jwt_public.current_ip_address();

