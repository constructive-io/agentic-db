-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/alterations/alt0000000003
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table


COMMENT ON TABLE agentic_db_app_public.calendar_events IS E'@@searchConfig {"weights": {"tsv": 1, "bm25": 1}, "fts_field": "search_tsv", "bm25_field": "embedding_text", "bm25_text_config": "english", "fts_source_fields": [{"field": "title", "weight": "A"}, {"field": "description", "weight": "B"}]}';

