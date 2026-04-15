-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/alterations/alt0000015778
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


COMMENT ON TABLE agentic_db_app_public.calendar_events IS E'@@searchConfig {"weights": {"tsv": 1.0}, "fts_field": "search_tsv", "fts_source_fields": [{"field": "title", "weight": "A"}, {"field": "description", "weight": "B"}]}';

