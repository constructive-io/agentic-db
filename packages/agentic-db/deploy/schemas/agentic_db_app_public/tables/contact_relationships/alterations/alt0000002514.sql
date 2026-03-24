-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/alterations/alt0000002514
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE agentic_db_app_public.contact_relationships IS E'@behavior +manyToMany';

