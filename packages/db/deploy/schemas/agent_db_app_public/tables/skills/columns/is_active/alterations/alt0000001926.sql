-- Deploy: schemas/agent_db_app_public/tables/skills/columns/is_active/alterations/alt0000001926
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/category/column
-- requires: schemas/agent_db_app_public/tables/skills/columns/is_active/column



ALTER TABLE "agent_db_app_public".skills 
    ALTER COLUMN is_active SET DEFAULT true;

