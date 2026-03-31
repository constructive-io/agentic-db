-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/created_at/alterations/alt0000003035
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/created_at/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy



ALTER TABLE agentic_db_app_public.deals 
    ALTER COLUMN created_at SET DEFAULT now();

