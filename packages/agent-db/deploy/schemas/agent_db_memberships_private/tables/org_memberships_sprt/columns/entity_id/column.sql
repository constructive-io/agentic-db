-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/table


ALTER TABLE "agent_db_memberships_private".org_memberships_sprt 
  ADD COLUMN entity_id uuid;

