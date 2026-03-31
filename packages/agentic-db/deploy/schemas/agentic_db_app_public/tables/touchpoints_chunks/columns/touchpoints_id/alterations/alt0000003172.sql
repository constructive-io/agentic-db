-- Deploy: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/touchpoints_id/alterations/alt0000003172
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/touchpoints_id/column


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  ALTER COLUMN touchpoints_id SET NOT NULL;

