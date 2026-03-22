-- Deploy: schemas/agentic_db_app_public/tables/company_images/columns/id/alterations/alt0000001422
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_images/table
-- requires: schemas/agentic_db_app_public/tables/company_images/columns/id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".company_images 
  ALTER COLUMN id SET NOT NULL;

