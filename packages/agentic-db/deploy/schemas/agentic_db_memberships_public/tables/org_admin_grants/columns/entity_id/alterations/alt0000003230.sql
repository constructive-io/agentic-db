-- Deploy: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/entity_id/alterations/alt0000003230
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/entity_id/column


COMMENT ON COLUMN agentic_db_memberships_public.org_admin_grants.entity_id IS E'The entity (org or group) this admin grant applies to';

