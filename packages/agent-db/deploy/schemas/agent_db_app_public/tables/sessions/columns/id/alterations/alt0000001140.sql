-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/id/alterations/alt0000001140
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/id/column
-- requires: schemas/agent_db_app_public/tables/agents/columns/embedding/column



ALTER TABLE agent_db_app_public.sessions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

