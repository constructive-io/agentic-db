-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/id/alterations/alt0000002335
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/id/column



ALTER TABLE "agent_db_auth_private".session_credentials 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

