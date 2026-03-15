-- Deploy: schemas/agent_db_app_public/tables/feedback/columns/id/alterations/alt0000001120
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/id/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/error/column



ALTER TABLE agent_db_app_public.feedback 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

