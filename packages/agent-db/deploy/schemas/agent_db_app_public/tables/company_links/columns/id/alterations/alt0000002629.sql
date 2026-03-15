-- Deploy: schemas/agent_db_app_public/tables/company_links/columns/id/alterations/alt0000002629
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_links/table
-- requires: schemas/agent_db_app_public/tables/company_links/columns/id/column
-- requires: schemas/agent_db_app_public/tables/contact_links/columns/embedding/column



ALTER TABLE "agent_db_app_public".company_links 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

