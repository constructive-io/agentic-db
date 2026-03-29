-- Deploy: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/alterations/alt0000010055
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/table


ALTER TABLE agentic_db_memberships_private.org_hierarchy_sprts 
  DISABLE ROW LEVEL SECURITY;

