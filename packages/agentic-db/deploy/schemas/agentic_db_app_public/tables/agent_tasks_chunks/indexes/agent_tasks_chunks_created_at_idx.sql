-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks_chunks/indexes/agent_tasks_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/created_at/column


CREATE INDEX agent_tasks_chunks_created_at_idx ON "agentic_db_app_public".agent_tasks_chunks ( created_at );

