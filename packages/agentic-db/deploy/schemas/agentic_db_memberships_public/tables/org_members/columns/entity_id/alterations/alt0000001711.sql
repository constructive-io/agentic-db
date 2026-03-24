-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/columns/entity_id/alterations/alt0000001711
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_members/columns/entity_id/column


COMMENT ON COLUMN agentic_db_memberships_public.org_members.entity_id IS E'References the entity (org or group) this member belongs to';

