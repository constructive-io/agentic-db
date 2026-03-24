-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/columns/id/alterations/alt0000002362
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy



ALTER TABLE agentic_db_app_public.touchpoints 
    ALTER COLUMN id SET DEFAULT uuidv7();

