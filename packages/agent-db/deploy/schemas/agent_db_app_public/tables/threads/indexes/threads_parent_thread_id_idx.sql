-- Deploy: schemas/agent_db_app_public/tables/threads/indexes/threads_parent_thread_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/indexes/threads_status_idx
-- requires: schemas/agent_db_app_public/tables/threads/columns/parent_thread_id/column


CREATE INDEX threads_parent_thread_id_idx ON agent_db_app_public.threads USING BTREE ( parent_thread_id );

