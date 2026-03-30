-- Deploy: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/metadata/alterations/alt0000001078
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/metadata/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy



ALTER TABLE "agentic_db_app_public".touchpoints_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

