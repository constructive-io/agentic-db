-- Deploy: schemas/agent_db_app_public/tables/agents/columns/id/alterations/alt0000001963
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/id/column
-- requires: schemas/agent_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint



ALTER TABLE "agent_db_app_public".agents 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

