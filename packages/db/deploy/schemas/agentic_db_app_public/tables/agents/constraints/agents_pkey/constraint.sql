-- Deploy: schemas/agentic_db_app_public/tables/agents/constraints/agents_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".agents 
  ADD CONSTRAINT agents_pkey PRIMARY KEY (id);

