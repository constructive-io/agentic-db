-- Deploy: schemas/agentic_db_app_public/tables/contact_companies/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_companies/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".contact_companies 
  ENABLE ROW LEVEL SECURITY;

