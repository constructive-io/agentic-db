-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_owner/alterations/alt0000000110
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_owner/column


COMMENT ON COLUMN agent_db_memberships_public.app_memberships.is_owner IS 'Whether the actor is the owner of this entity';

