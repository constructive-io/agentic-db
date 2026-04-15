-- Deploy: schemas/agentic_db_app_public/tables/contacts/alterations/alt0000000881
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table


COMMENT ON TABLE "agentic_db_app_public".contacts IS E'@@hasChunks {"chunks_table": "contacts_chunks", "embedding_field": "embedding"}\\n@@searchConfig {"weights": {"tsv": 1.0, "bm25": 1.0}, "fts_field": "search_tsv", "bm25_field": "embedding_text", "bm25_text_config": "english", "fts_source_fields": [{"field": "first_name", "weight": "A"}, {"field": "last_name", "weight": "A"}, {"field": "headline", "weight": "B"}, {"field": "bio", "weight": "C"}]}';

