-- Deploy: schemas/agent_db_memberships_public/tables/app_owner_grants/indexes/app_owner_grants_grantor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_owner_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_owner_grants/columns/grantor_id/column


CREATE INDEX app_owner_grants_grantor_id_idx ON "agent_db_memberships_public".app_owner_grants USING BTREE ( grantor_id );

