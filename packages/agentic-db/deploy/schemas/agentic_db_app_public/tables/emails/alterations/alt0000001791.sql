-- Deploy: schemas/agentic_db_app_public/tables/emails/alterations/alt0000001791
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


COMMENT ON TABLE "agentic_db_app_public".emails IS E'@@searchConfig {"weights": {"tsv": 1.0}, "fts_field": "search_tsv", "fts_source_fields": [{"field": "subject", "weight": "A"}, {"field": "body_text", "weight": "B"}]}';

