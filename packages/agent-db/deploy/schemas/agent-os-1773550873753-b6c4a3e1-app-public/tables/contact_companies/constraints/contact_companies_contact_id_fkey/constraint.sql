-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_companies/constraints/contact_companies_contact_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_companies/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_companies 
  ADD CONSTRAINT contact_companies_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".contacts (id) 
    ON DELETE CASCADE;

