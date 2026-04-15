-- Deploy: schemas/agentic_db_app_public/tables/events_chunks/alterations/alt0000000958
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events_chunks/table


COMMENT ON TABLE "agentic_db_app_public".events_chunks IS E'@@chunksOf {"parent_fk": "events_id", "parent_table": "events"}';

