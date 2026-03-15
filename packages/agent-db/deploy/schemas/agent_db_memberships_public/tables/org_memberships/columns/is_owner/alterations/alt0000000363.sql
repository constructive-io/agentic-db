-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_owner/alterations/alt0000000363
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_owner/column


COMMENT ON COLUMN agent_db_memberships_public.org_memberships.is_owner IS 'Whether the actor is the owner of this entity';

