-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/columns/status/alterations/alt0000001201
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/description/column



ALTER TABLE "agentic_db_app_public".agent_tasks 
    ALTER COLUMN status SET DEFAULT 'pending';

