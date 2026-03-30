-- Deploy: schemas/agentic_db_app_public/tables/activity_logs_chunks/alterations/alt0000001713
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


COMMENT ON TABLE "agentic_db_app_public".activity_logs_chunks IS E'@@chunksOf {"parent_fk": "activity_logs_id", "parent_table": "activity_logs"}';

