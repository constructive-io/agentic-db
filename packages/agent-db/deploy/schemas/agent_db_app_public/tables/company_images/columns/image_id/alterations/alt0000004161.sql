-- Deploy: schemas/agent_db_app_public/tables/company_images/columns/image_id/alterations/alt0000004161
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_images/table
-- requires: schemas/agent_db_app_public/tables/company_images/columns/image_id/column
-- requires: schemas/agent_db_app_public/tables/contact_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_images 
  ALTER COLUMN image_id SET NOT NULL;

