-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permission_defaults/columns/id/alterations/alt0000001601
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permission_defaults/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permission_defaults/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".app_permission_defaults 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

