-- Deploy: schemas/agentic_db_app_public/tables/contact_images/alterations/alt0000003261
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_images/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE agentic_db_app_public.contact_images IS E'@behavior +manyToMany';

