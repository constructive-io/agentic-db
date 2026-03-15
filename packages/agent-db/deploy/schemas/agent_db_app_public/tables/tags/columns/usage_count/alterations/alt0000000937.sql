-- Deploy: schemas/agent_db_app_public/tables/tags/columns/usage_count/alterations/alt0000000937
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/category/column
-- requires: schemas/agent_db_app_public/tables/tags/columns/usage_count/column



ALTER TABLE agent_db_app_public.tags 
    ALTER COLUMN usage_count SET DEFAULT 0;

