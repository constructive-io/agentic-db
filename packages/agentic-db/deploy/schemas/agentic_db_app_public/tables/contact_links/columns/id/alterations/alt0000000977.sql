-- Deploy: schemas/agentic_db_app_public/tables/contact_links/columns/id/alterations/alt0000000977
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy



ALTER TABLE "agentic_db_app_public".contact_links 
    ALTER COLUMN id SET DEFAULT uuidv7();

