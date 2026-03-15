-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/indexes/app_owner_grants_grantor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/columns/grantor_id/column


CREATE INDEX app_owner_grants_grantor_id_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".app_owner_grants USING BTREE ( grantor_id );

