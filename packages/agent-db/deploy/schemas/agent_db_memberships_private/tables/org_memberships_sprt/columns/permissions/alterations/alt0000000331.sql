-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/permissions/alterations/alt0000000331
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/table
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/permissions/column


ALTER TABLE agent_db_memberships_private.org_memberships_sprt 
  ALTER COLUMN permissions SET NOT NULL;

