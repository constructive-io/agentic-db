-- Deploy: schemas/agent_db_app_public/tables/memories/indexes/memories_memory_category_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/memory_category/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/indexes/scheduled_jobs_agent_id_idx


CREATE INDEX memories_memory_category_idx ON "agent_db_app_public".memories USING BTREE ( memory_category );

