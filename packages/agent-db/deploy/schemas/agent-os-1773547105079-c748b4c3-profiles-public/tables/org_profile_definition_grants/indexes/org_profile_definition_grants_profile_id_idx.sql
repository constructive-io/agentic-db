-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/indexes/org_profile_definition_grants_profile_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/columns/profile_id/column


CREATE INDEX org_profile_definition_grants_profile_id_idx ON "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_definition_grants USING BTREE ( profile_id );

