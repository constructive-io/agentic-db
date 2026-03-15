-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_companies/constraints/contact_companies_contact_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_companies/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_companies 
  ADD CONSTRAINT contact_companies_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".contacts (id) 
    ON DELETE CASCADE;

