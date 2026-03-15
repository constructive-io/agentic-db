-- Deploy: schemas/agent_db_memberships_public/tables/app_admin_grants/indexes/app_admin_grants_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_admin_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_admin_grants/columns/created_at/column


CREATE INDEX app_admin_grants_created_at_idx ON "agent_db_memberships_public".app_admin_grants ( created_at );

