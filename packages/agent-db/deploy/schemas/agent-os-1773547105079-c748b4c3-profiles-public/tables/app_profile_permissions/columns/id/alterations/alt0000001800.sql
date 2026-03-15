-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/columns/id/alterations/alt0000001800
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_permissions/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_permissions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

