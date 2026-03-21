-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/indexes/activity_log_chunks_activity_log_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/activity_log_id/column
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/indexes/session_archive_chunks_session_archive_id_idx


CREATE INDEX activity_log_chunks_activity_log_id_idx ON agentic_db_app_public.activity_log_chunks USING BTREE ( activity_log_id );

