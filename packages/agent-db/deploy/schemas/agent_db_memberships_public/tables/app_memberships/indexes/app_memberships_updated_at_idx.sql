-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/indexes/app_memberships_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/updated_at/column


CREATE INDEX app_memberships_updated_at_idx ON agent_db_memberships_public.app_memberships ( updated_at );

