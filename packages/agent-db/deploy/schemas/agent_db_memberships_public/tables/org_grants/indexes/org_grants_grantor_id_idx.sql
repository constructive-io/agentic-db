-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/indexes/org_grants_grantor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_grants/columns/grantor_id/column


CREATE INDEX org_grants_grantor_id_idx ON agent_db_memberships_public.org_grants USING BTREE ( grantor_id );

