-- Deploy: schemas/agentic_db_app_public/tables/companies/alterations/alt0000000909
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table


COMMENT ON TABLE "agentic_db_app_public".companies IS E'@@hasChunks {"chunks_table": "companies_chunks", "embedding_field": "embedding"}\\n@@trgmSearch name\\n@@searchConfig {"weights": {"tsv": 1.0, "bm25": 1.0}, "fts_field": "search_tsv", "bm25_field": "embedding_text", "bm25_text_config": "english", "fts_source_fields": [{"field": "name", "weight": "A"}, {"field": "description", "weight": "B"}, {"field": "industry", "weight": "C"}]}';

