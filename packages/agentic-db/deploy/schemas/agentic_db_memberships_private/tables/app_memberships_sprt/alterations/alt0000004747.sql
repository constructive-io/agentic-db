-- Deploy: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/alterations/alt0000004747
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/table


ALTER TABLE agentic_db_memberships_private.app_memberships_sprt 
  DISABLE ROW LEVEL SECURITY;

