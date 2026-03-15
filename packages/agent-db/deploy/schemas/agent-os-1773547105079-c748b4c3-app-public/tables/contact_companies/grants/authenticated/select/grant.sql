-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_companies/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_companies/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".contact_companies TO authenticated;

