-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/indexes/org_profiles_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/updated_at/column


CREATE INDEX org_profiles_updated_at_idx ON "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profiles ( updated_at );

