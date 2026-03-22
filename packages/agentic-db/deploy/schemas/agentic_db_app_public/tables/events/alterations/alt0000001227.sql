-- Deploy: schemas/agentic_db_app_public/tables/events/alterations/alt0000001227
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE "agentic_db_app_public".events IS E'@@trgmSearch name\\n@@searchConfig {"weights": {"tsv": 1.0}, "fts_field": "search_tsv", "fts_source_fields": [{"field": "name", "weight": "A"}, {"field": "notes_text", "weight": "B"}, {"field": "location", "weight": "C"}]}';

