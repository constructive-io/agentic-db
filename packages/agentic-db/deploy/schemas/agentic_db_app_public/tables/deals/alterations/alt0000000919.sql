-- Deploy: schemas/agentic_db_app_public/tables/deals/alterations/alt0000000919
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE "agentic_db_app_public".deals IS E'@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

