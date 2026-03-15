-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/indexes/org_profile_definition_grants_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/columns/updated_at/column


CREATE INDEX org_profile_definition_grants_updated_at_idx ON "agent-os-1773551593867-bac64076-profiles-public".org_profile_definition_grants ( updated_at );

