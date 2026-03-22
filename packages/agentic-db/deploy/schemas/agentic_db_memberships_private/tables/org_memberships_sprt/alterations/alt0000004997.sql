-- Deploy: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/alterations/alt0000004997
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/table


ALTER TABLE agentic_db_memberships_private.org_memberships_sprt 
  DISABLE ROW LEVEL SECURITY;

