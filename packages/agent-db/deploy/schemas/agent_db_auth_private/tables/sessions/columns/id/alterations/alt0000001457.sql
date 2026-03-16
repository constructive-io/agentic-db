-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/id/alterations/alt0000001457
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/id/column



ALTER TABLE "agent_db_auth_private".sessions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

