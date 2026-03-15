-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_companies/constraints/contact_companies_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_companies/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_companies 
  ADD CONSTRAINT contact_companies_pkey PRIMARY KEY (id);

