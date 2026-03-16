-- Deploy: schemas/agentic_db_app_public/tables/contact_companies/columns/contact_id/alterations/alt0000001003
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_companies/table
-- requires: schemas/agentic_db_app_public/tables/contact_companies/columns/contact_id/column
-- requires: schemas/agentic_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".contact_companies 
  ALTER COLUMN contact_id SET NOT NULL;

