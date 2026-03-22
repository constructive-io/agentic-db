-- Deploy: schemas/agentic_db_app_public/tables/company_images/columns/image_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_images/table
-- requires: schemas/agentic_db_app_public/tables/contact_images/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.company_images 
  ADD COLUMN image_id uuid;

