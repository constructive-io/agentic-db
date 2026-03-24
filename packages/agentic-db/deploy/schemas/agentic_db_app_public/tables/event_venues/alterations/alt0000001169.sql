-- Deploy: schemas/agentic_db_app_public/tables/event_venues/alterations/alt0000001169
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE "agentic_db_app_public".event_venues IS E'@behavior +manyToMany';

