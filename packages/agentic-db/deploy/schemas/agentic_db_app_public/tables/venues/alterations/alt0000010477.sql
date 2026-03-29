-- Deploy: schemas/agentic_db_app_public/tables/venues/alterations/alt0000010477
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE agentic_db_app_public.venues IS E'@@hasChunks {"chunks_table": "venues_chunks", "embedding_field": "embedding"}\\n@@trgmSearch name\\n@@searchConfig {"weights": {"tsv": 1.0, "bm25": 1.0}, "fts_field": "search_tsv", "bm25_field": "embedding_text", "bm25_text_config": "english", "fts_source_fields": [{"field": "name", "weight": "A"}, {"field": "notes", "weight": "B"}, {"field": "neighborhood", "weight": "C"}]}';

