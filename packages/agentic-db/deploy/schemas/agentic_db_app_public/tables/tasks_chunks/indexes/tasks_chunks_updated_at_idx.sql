-- Deploy: schemas/agentic_db_app_public/tables/tasks_chunks/indexes/tasks_chunks_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tasks_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX tasks_chunks_updated_at_idx ON agentic_db_app_public.tasks_chunks ( updated_at );

