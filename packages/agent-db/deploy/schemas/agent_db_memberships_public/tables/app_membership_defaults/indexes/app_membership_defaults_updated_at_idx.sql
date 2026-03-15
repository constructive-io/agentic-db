-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/indexes/app_membership_defaults_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/updated_at/column


CREATE INDEX app_membership_defaults_updated_at_idx ON "agent_db_memberships_public".app_membership_defaults ( updated_at );

