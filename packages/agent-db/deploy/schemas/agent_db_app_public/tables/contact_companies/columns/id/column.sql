-- Deploy: schemas/agent_db_app_public/tables/contact_companies/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_companies/table
-- requires: schemas/agent_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE agent_db_app_public.contact_companies 
  ADD COLUMN id uuid;

