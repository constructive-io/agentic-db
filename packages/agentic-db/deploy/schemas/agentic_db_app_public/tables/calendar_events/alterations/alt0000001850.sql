-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/alterations/alt0000001850
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


COMMENT ON TABLE "agentic_db_app_public".calendar_events IS E'@@hasChunks {"chunks_table": "calendar_events_chunks", "embedding_field": "embedding"}\\n@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

