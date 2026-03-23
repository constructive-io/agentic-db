-- Deploy: schemas/agentic_db_app_public/tables/event_images/alterations/alt0000002817
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_images/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE agentic_db_app_public.event_images IS E'@behavior +manyToMany';

