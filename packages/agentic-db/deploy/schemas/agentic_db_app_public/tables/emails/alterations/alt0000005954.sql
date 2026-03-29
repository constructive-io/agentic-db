-- Deploy: schemas/agentic_db_app_public/tables/emails/alterations/alt0000005954
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


COMMENT ON TABLE agentic_db_app_public.emails IS E'@@searchConfig {"weights": {"tsv": 1.0}, "fts_field": "search_tsv", "fts_source_fields": [{"field": "subject", "weight": "A"}, {"field": "body_text", "weight": "B"}]}';

