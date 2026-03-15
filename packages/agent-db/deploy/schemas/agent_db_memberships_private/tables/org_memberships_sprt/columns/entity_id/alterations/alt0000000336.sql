-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/entity_id/alterations/alt0000000336
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/table
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/entity_id/column


ALTER TABLE agent_db_memberships_private.org_memberships_sprt 
  ALTER COLUMN entity_id SET NOT NULL;

