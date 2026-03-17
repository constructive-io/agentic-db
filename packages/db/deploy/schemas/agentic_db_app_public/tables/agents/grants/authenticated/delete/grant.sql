-- Deploy: schemas/agentic_db_app_public/tables/agents/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


GRANT DELETE ON "agentic_db_app_public".agents TO authenticated;

