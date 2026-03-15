-- Deploy: schemas/agent_db_app_public/tables/companies/columns/id/alterations/alt0000004087
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/id/column
-- requires: schemas/agent_db_app_public/tables/contacts/columns/main_image_id/column



ALTER TABLE "agent_db_app_public".companies 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

