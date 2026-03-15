-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/indexes/app_profiles_default_uniq
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/is_default/column


CREATE UNIQUE INDEX app_profiles_default_uniq ON "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles ( (true::boolean) ) WHERE is_default = true;

