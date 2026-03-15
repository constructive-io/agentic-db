-- Deploy: schemas/agent_db_app_public/tables/tools/columns/is_active/alterations/alt0000004393
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/is_active/column
-- requires: schemas/agent_db_app_public/tables/tools/columns/auth_method/column



ALTER TABLE "agent_db_app_public".tools 
    ALTER COLUMN is_active SET DEFAULT true;

