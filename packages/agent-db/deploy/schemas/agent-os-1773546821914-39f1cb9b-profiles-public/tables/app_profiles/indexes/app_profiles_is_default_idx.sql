-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/indexes/app_profiles_is_default_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/is_default/column


CREATE INDEX app_profiles_is_default_idx ON "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles USING BTREE ( is_default );

