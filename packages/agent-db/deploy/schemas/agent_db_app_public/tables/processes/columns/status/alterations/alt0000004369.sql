-- Deploy: schemas/agent_db_app_public/tables/processes/columns/status/alterations/alt0000004369
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/status/column
-- requires: schemas/agent_db_app_public/tables/processes/columns/ended_at/column



ALTER TABLE "agent_db_app_public".processes 
    ALTER COLUMN status SET DEFAULT 'running';

