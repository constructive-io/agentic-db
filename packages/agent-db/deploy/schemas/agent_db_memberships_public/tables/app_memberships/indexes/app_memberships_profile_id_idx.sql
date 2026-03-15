-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/indexes/app_memberships_profile_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/profile_id/column


CREATE INDEX app_memberships_profile_id_idx ON agent_db_memberships_public.app_memberships USING BTREE ( profile_id );

