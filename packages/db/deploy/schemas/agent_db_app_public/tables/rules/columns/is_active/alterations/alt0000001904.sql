-- Deploy: schemas/agent_db_app_public/tables/rules/columns/is_active/alterations/alt0000001904
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/severity/column
-- requires: schemas/agent_db_app_public/tables/rules/columns/is_active/column



ALTER TABLE "agent_db_app_public".rules 
    ALTER COLUMN is_active SET DEFAULT true;

