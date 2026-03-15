-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/indexes/org_profiles_default_entity_uniq
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profiles/columns/is_default/column


CREATE UNIQUE INDEX org_profiles_default_entity_uniq ON "agent-os-1773547105079-c748b4c3-profiles-public".org_profiles ( entity_id ) WHERE is_default = true AND entity_id IS NOT NULL;

