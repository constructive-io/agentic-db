-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/columns/priority/alterations/alt0000001202
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/priority/column
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/status/alterations/alt0000001201



ALTER TABLE "agentic_db_app_public".agent_tasks 
    ALTER COLUMN priority SET DEFAULT 0;

