-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/indexes/org_membership_defaults_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/created_at/column


CREATE INDEX org_membership_defaults_created_at_idx ON "agent_db_memberships_public".org_membership_defaults ( created_at );

