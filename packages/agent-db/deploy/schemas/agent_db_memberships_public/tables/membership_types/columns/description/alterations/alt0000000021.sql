-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/columns/description/alterations/alt0000000021
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/columns/description/column


COMMENT ON COLUMN agent_db_memberships_public.membership_types.description IS 'Description of what this membership type represents';

