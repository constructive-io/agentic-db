-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/is_default/alterations/alt0000001793
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/is_default/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles 
    ALTER COLUMN is_default SET DEFAULT false;

