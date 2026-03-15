-- Deploy: schemas/agent_db_app_public/tables/contact_companies/columns/id/alterations/alt0000004185
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_companies/table
-- requires: schemas/agent_db_app_public/tables/contact_companies/columns/id/column
-- requires: schemas/agent_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint



ALTER TABLE "agent_db_app_public".contact_companies 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

