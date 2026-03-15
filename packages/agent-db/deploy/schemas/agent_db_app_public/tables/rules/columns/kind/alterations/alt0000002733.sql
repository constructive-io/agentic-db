-- Deploy: schemas/agent_db_app_public/tables/rules/columns/kind/alterations/alt0000002733
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/kind/column
-- requires: schemas/agent_db_app_public/tables/rules/columns/content/column



ALTER TABLE "agent_db_app_public".rules 
    ALTER COLUMN kind SET DEFAULT 'convention';

