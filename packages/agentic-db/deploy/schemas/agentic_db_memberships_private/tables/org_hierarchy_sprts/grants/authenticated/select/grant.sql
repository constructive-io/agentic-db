-- Deploy: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/table


GRANT SELECT ON agentic_db_memberships_private.org_hierarchy_sprts TO authenticated;

