-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_permissions/indexes/app_profile_permissions_profile_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_permissions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_permissions/columns/profile_id/column


CREATE INDEX app_profile_permissions_profile_id_idx ON "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_permissions USING BTREE ( profile_id );

