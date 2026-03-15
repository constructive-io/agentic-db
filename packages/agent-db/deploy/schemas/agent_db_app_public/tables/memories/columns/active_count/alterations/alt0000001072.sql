-- Deploy: schemas/agent_db_app_public/tables/memories/columns/active_count/alterations/alt0000001072
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/overview/column
-- requires: schemas/agent_db_app_public/tables/memories/columns/active_count/column



ALTER TABLE agent_db_app_public.memories 
    ALTER COLUMN active_count SET DEFAULT 0;

