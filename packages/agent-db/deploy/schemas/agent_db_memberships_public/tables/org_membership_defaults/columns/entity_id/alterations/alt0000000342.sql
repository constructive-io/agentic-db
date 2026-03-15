-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/entity_id/alterations/alt0000000342
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/entity_id/column


COMMENT ON COLUMN agent_db_memberships_public.org_membership_defaults.entity_id IS 'References the entity these membership defaults apply to';

