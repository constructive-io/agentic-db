-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/name/alterations/alt0000001781
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles 
  ALTER COLUMN name SET NOT NULL;

