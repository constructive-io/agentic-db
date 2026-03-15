-- Deploy: schemas/agent_db_app_public/tables/threads/columns/status/alterations/alt0000001181
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/status/column
-- requires: schemas/agent_db_app_public/tables/threads/columns/summary/column



ALTER TABLE agent_db_app_public.threads 
    ALTER COLUMN status SET DEFAULT 'open';

