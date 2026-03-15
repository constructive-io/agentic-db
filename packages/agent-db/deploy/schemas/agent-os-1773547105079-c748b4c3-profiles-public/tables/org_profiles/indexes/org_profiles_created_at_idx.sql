-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/indexes/org_profiles_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/created_at/column


CREATE INDEX org_profiles_created_at_idx ON "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles ( created_at );

