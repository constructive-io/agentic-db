-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/status/alterations/alt0000002722
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/status/column
-- requires: schemas/agent_db_app_public/tables/tasks/columns/description/column



ALTER TABLE "agent_db_app_public".tasks 
    ALTER COLUMN status SET DEFAULT 'todo';

