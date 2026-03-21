-- Deploy: schemas/agentic_db_app_public/tables/company_images/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_images/table
-- requires: schemas/agentic_db_app_public/tables/contact_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".company_images 
  ENABLE ROW LEVEL SECURITY;

