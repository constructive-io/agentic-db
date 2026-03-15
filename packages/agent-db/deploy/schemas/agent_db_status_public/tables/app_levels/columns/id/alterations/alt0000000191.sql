-- Deploy: schemas/agent_db_status_public/tables/app_levels/columns/id/alterations/alt0000000191
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/table
-- requires: schemas/agent_db_status_public/tables/app_levels/columns/id/column



ALTER TABLE agent_db_status_public.app_levels 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

