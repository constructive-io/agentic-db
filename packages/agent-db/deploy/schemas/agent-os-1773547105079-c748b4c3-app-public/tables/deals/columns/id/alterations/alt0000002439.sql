-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/id/alterations/alt0000002439
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/companies/columns/main_image_id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deals 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

