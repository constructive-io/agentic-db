-- Deploy: schemas/agentic_db_app_public/tables/trips_chunks/alterations/alt0000003887
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


COMMENT ON TABLE agentic_db_app_public.trips_chunks IS E'@@chunksOf {"parent_fk": "trips_id", "parent_table": "trips"}';

