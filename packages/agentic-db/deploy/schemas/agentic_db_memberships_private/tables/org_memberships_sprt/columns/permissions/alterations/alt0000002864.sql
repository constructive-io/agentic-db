-- Deploy: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/permissions/alterations/alt0000002864
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/table
-- requires: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/permissions/column



ALTER TABLE agentic_db_memberships_private.org_memberships_sprt 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

