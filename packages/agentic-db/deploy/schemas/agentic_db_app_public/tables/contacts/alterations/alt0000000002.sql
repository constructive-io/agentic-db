-- Deploy: schemas/agentic_db_app_public/tables/contacts/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table


COMMENT ON TABLE agentic_db_app_public.contacts IS E'@@searchConfig {"weights": {"tsv": 1}, "fts_field": "search_tsv", "fts_source_fields": [{"field": "first_name", "weight": "A"}, {"field": "last_name", "weight": "A"}, {"field": "headline", "weight": "B"}, {"field": "bio", "weight": "C"}]}';

