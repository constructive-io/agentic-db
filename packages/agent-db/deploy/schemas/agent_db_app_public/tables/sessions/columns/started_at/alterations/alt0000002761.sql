-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/started_at/alterations/alt0000002761
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/title/column
-- requires: schemas/agent_db_app_public/tables/sessions/columns/started_at/column



ALTER TABLE "agent_db_app_public".sessions 
    ALTER COLUMN started_at SET DEFAULT now();

