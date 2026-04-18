-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/alterations/alt0000001370
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


COMMENT ON TABLE agentic_db_app_public.thread_participants IS E'@behavior +manyToMany';

