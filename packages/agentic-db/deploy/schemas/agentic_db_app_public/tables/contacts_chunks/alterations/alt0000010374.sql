-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/alterations/alt0000010374
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE agentic_db_app_public.contacts_chunks IS E'@@chunksOf {"parent_fk": "contacts_id", "parent_table": "contacts"}';

