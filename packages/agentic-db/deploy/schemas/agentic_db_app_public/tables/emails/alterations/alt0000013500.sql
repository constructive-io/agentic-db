-- Deploy: schemas/agentic_db_app_public/tables/emails/alterations/alt0000013500
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


COMMENT ON TABLE agentic_db_app_public.emails IS E'@@trgmSearch subject\\n@@searchConfig {"weights": {"tsv": 1.0, "bm25": 1.0}, "fts_field": "search_tsv", "bm25_field": "embedding_text", "bm25_text_config": "english", "fts_source_fields": [{"field": "subject", "weight": "A"}, {"field": "body_text", "weight": "B"}]}';

