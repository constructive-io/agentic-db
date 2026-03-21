-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/constraints/activity_log_chunks_activity_log_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/indexes/session_archive_chunks_session_archive_id_idx


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  ADD CONSTRAINT activity_log_chunks_activity_log_id_fkey 
    FOREIGN KEY(activity_log_id) 
    REFERENCES "agentic_db_app_public".activity_log (id) 
    ON DELETE CASCADE;

