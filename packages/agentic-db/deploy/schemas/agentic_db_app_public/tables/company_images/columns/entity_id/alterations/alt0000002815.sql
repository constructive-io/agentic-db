-- Deploy: schemas/agentic_db_app_public/tables/company_images/columns/entity_id/alterations/alt0000002815
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_images/table
-- requires: schemas/agentic_db_app_public/tables/company_images/columns/entity_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.company_images 
  ALTER COLUMN entity_id SET NOT NULL;

