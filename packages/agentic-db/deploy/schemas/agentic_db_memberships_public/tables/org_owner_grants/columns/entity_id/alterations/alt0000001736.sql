-- Deploy: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/entity_id/alterations/alt0000001736
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/entity_id/column


COMMENT ON COLUMN agentic_db_memberships_public.org_owner_grants.entity_id IS E'The entity (org or group) this ownership grant applies to';

