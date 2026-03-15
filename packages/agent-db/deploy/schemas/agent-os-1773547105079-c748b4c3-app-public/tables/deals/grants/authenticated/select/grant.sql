-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/columns/main_image_id/column


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".deals TO authenticated;

