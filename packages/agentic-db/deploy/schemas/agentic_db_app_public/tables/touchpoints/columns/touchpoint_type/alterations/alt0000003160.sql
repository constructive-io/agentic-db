-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/columns/touchpoint_type/alterations/alt0000003160
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/columns/touchpoint_type/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.touchpoints 
  ALTER COLUMN touchpoint_type SET NOT NULL;

