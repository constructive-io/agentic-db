-- Deploy: schemas/agentic_db_app_public/tables/agents/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


GRANT UPDATE ON "agentic_db_app_public".agents TO authenticated;

