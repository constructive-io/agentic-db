-- Deploy: schemas/agent_db_app_public/tables/templates/columns/is_active/alterations/alt0000002361
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/is_active/column
-- requires: schemas/agent_db_app_public/tables/templates/columns/variables/column



ALTER TABLE "agent_db_app_public".templates 
    ALTER COLUMN is_active SET DEFAULT true;

