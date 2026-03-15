-- Deploy: schemas/agent_db_status_public/tables/app_steps/columns/count/alterations/alt0000000171
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/count/column



ALTER TABLE agent_db_status_public.app_steps 
    ALTER COLUMN count SET DEFAULT 1;

