-- Deploy: schemas/agent_db_app_public/tables/companies/columns/entity_id/alterations/alt0000000870
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/contacts/columns/main_image_id/column


ALTER TABLE agent_db_app_public.companies 
  ALTER COLUMN entity_id SET NOT NULL;

