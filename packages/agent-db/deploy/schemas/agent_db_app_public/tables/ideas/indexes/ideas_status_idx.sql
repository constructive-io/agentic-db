-- Deploy: schemas/agent_db_app_public/tables/ideas/indexes/ideas_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/status/column
-- requires: schemas/agent_db_app_public/tables/repositories/indexes/repositories_last_synced_at_idx


CREATE INDEX ideas_status_idx ON agent_db_app_public.ideas USING BTREE ( status );

