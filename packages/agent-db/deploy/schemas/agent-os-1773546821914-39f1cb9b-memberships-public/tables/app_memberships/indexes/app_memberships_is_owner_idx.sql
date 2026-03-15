-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/indexes/app_memberships_is_owner_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/is_owner/column


CREATE INDEX app_memberships_is_owner_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships USING BTREE ( is_owner );

