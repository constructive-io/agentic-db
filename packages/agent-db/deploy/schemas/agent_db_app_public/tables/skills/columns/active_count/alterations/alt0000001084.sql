-- Deploy: schemas/agent_db_app_public/tables/skills/columns/active_count/alterations/alt0000001084
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/overview/column
-- requires: schemas/agent_db_app_public/tables/skills/columns/active_count/column



ALTER TABLE agent_db_app_public.skills 
    ALTER COLUMN active_count SET DEFAULT 0;

