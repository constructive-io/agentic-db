-- Deploy: schemas/agent_db_app_public/tables/company_links/columns/company_id/alterations/alt0000004178
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_links/table
-- requires: schemas/agent_db_app_public/tables/company_links/columns/company_id/column
-- requires: schemas/agent_db_app_public/tables/contact_links/constraints/contact_links_contact_id_fkey/constraint


ALTER TABLE "agent_db_app_public".company_links 
  ALTER COLUMN company_id SET NOT NULL;

