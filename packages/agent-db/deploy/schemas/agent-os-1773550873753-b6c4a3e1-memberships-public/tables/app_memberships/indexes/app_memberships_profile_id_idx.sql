-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/indexes/app_memberships_profile_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/profile_id/column


CREATE INDEX app_memberships_profile_id_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships USING BTREE ( profile_id );

