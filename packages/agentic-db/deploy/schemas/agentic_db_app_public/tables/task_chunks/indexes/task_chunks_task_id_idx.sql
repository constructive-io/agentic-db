-- Deploy: schemas/agentic_db_app_public/tables/task_chunks/indexes/task_chunks_task_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/task_id/column
-- requires: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_parent_task_id_idx


CREATE INDEX task_chunks_task_id_idx ON "agentic_db_app_public".task_chunks USING BTREE ( task_id );

