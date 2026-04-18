-- Deploy: schemas/agentic_db_app_public/tables/event_notes/alterations/alt0000001350
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_notes/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


COMMENT ON TABLE agentic_db_app_public.event_notes IS E'@behavior +manyToMany';

