-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/alterations/alt0000001205
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


COMMENT ON TABLE "agentic_db_app_public".deal_contacts IS E'@behavior +manyToMany';

