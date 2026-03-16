-- Deploy: schemas/agent_db_status_public/tables/app_levels/columns/id/alterations/alt0000001043
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/table
-- requires: schemas/agent_db_status_public/tables/app_levels/columns/id/column



ALTER TABLE "agent_db_status_public".app_levels 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

