-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/alterations/alt0000000004
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table


COMMENT ON TABLE agentic_db_app_public.contacts_chunks IS E'@@chunksOf {"parentFk": "contacts_id", "parentTable": "contacts"}
@@searchConfig {"weights": {"tsv": 1, "bm25": 1}, "fts_field": "search", "bm25_field": "content", "bm25_text_config": "english", "fts_source_fields": [{"lang": "english", "field": "content", "weight": "A"}]}';

