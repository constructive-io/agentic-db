-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/id/alterations/alt0000002459
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/main_image_id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venues 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

