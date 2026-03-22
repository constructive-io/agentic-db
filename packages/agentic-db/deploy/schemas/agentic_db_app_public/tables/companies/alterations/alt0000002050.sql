-- Deploy: schemas/agentic_db_app_public/tables/companies/alterations/alt0000002050
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE agentic_db_app_public.companies IS E'@@searchConfig {"weights": {"tsv": 1.0}, "fts_field": "search_tsv", "fts_source_fields": [{"field": "name", "weight": "A"}, {"field": "description", "weight": "B"}, {"field": "industry", "weight": "C"}]}';

