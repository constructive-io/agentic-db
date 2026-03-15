-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/is_owner/alterations/alt0000000326
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/table
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/is_owner/column



ALTER TABLE agent_db_memberships_private.org_memberships_sprt 
    ALTER COLUMN is_owner SET DEFAULT false;

