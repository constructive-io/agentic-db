-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/indexes/org_profiles_default_global_uniq
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/entity_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/is_default/column


CREATE UNIQUE INDEX org_profiles_default_global_uniq ON "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profiles ( (true::boolean) ) WHERE is_default = true AND entity_id IS NULL;

