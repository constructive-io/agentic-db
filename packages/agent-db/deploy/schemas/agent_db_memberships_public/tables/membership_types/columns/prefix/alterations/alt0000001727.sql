-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/columns/prefix/alterations/alt0000001727
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/columns/prefix/column


COMMENT ON COLUMN "agent_db_memberships_public".membership_types.prefix IS 'Short prefix used to namespace tables and functions for this membership scope';

