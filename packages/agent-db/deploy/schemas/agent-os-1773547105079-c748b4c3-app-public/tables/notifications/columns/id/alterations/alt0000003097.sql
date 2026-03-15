-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/id/alterations/alt0000003097
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/ref_type/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

