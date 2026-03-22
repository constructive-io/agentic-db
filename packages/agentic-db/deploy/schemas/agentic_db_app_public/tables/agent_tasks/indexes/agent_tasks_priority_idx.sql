-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/indexes/agent_tasks_priority_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/priority/column


CREATE INDEX agent_tasks_priority_idx ON agentic_db_app_public.agent_tasks USING BTREE ( priority );

