-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/indexes/app_profile_grants_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/columns/updated_at/column


CREATE INDEX app_profile_grants_updated_at_idx ON "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_grants ( updated_at );

