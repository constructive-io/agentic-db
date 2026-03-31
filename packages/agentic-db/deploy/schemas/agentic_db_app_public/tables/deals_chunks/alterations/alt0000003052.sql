-- Deploy: schemas/agentic_db_app_public/tables/deals_chunks/alterations/alt0000003052
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE agentic_db_app_public.deals_chunks IS E'@@chunksOf {"parent_fk": "deals_id", "parent_table": "deals"}';

