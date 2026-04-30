-- Deploy: schemas/agentic_db_app_public/tables/venues/alterations/alt0000000097
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_app_public.venues IS E'@@trgmSearch name
@@searchConfig {"weights": {"tsv": 1.0, "bm25": 1.0}, "fts_field": "search_tsv", "bm25_field": "embedding_text", "bm25_text_config": "english", "fts_source_fields": [{"field": "name", "weight": "A"}, {"field": "notes", "weight": "B"}, {"field": "neighborhood", "weight": "C"}]}';

