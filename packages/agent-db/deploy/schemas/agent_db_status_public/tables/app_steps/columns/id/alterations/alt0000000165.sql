-- Deploy: schemas/agent_db_status_public/tables/app_steps/columns/id/alterations/alt0000000165
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/id/column



ALTER TABLE agent_db_status_public.app_steps 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

