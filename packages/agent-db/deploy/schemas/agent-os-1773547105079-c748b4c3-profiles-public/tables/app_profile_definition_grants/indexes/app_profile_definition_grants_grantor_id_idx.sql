-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_definition_grants/indexes/app_profile_definition_grants_grantor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_definition_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_definition_grants/columns/grantor_id/column


CREATE INDEX app_profile_definition_grants_grantor_id_idx ON "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_definition_grants USING BTREE ( grantor_id );

