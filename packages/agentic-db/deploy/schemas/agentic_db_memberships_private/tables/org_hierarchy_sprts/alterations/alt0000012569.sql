-- Deploy: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/alterations/alt0000012569
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/table


COMMENT ON TABLE agentic_db_memberships_private.org_hierarchy_sprts IS E'Transitive closure support table for fast ancestor/descendant lookups; rebuilt automatically by triggers';

