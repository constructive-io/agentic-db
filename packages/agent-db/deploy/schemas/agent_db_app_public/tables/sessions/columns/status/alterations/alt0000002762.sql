-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/status/alterations/alt0000002762
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/status/column
-- requires: schemas/agent_db_app_public/tables/sessions/columns/ended_at/column



ALTER TABLE "agent_db_app_public".sessions 
    ALTER COLUMN status SET DEFAULT 'running';

