-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/indexes/app_profile_permissions_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/columns/updated_at/column


CREATE INDEX app_profile_permissions_updated_at_idx ON "agent-os-1773551593867-bac64076-profiles-public".app_profile_permissions ( updated_at );

