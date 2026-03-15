-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/indexes/app_profiles_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/updated_at/column


CREATE INDEX app_profiles_updated_at_idx ON "agent-os-1773551593867-bac64076-profiles-public".app_profiles ( updated_at );

