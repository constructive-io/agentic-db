-- Deploy: schemas/agent_db_app_public/tables/skills/columns/is_active/alterations/alt0000002752
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/content/column
-- requires: schemas/agent_db_app_public/tables/skills/columns/is_active/column



ALTER TABLE "agent_db_app_public".skills 
    ALTER COLUMN is_active SET DEFAULT true;

