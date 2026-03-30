-- Deploy: schemas/agentic_db_app_public/tables/interactions_chunks/alterations/alt0000001056
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE "agentic_db_app_public".interactions_chunks IS E'@@chunksOf {"parent_fk": "interactions_id", "parent_table": "interactions"}';

