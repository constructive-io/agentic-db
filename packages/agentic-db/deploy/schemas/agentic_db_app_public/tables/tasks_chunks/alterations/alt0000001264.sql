-- Deploy: schemas/agentic_db_app_public/tables/tasks_chunks/alterations/alt0000001264
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON TABLE "agentic_db_app_public".tasks_chunks IS E'@@chunksOf {"parent_fk": "tasks_id", "parent_table": "tasks"}';

