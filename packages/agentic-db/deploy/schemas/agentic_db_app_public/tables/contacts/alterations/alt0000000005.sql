-- Deploy: schemas/agentic_db_app_public/tables/contacts/alterations/alt0000000005
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table


COMMENT ON TABLE agentic_db_app_public.contacts IS E'@@hasChunks {"parentFk": "contacts_id", "parentPk": "id", "chunksTable": "contacts_chunks", "searchField": "search", "contentField": "content", "searchIndexes": ["fulltext", "bm25"], "embeddingField": "embedding"}
@@trgmSearch first_name
@@trgmSearch last_name
@@searchConfig {"weights": {"tsv": 1, "bm25": 1}, "fts_field": "search_tsv", "bm25_field": "embedding_text", "bm25_text_config": "english", "fts_source_fields": [{"field": "first_name", "weight": "A"}, {"field": "last_name", "weight": "A"}, {"field": "headline", "weight": "B"}, {"field": "bio", "weight": "C"}]}';

