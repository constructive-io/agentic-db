-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/columns/created_at/alterations/alt0000002367
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/created_at/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.touchpoints 
  ALTER COLUMN created_at SET NOT NULL;

