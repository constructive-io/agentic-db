-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table


COMMENT ON TABLE agentic_db_app_public.contacts_chunks IS E'@@searchConfig {"weights": {"tsv": 1}, "fts_field": "search", "fts_source_fields": [{"lang": "english", "field": "content", "weight": "A"}]}';

