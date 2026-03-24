-- Deploy: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/entity_id/alterations/alt0000001890
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/entity_id/column


COMMENT ON COLUMN agentic_db_memberships_private.org_hierarchy_sprts.entity_id IS 'Organization this closure row belongs to';

