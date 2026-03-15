-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/columns/entity_id/alterations/alt0000000336
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/columns/entity_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_sprt 
  ALTER COLUMN entity_id SET NOT NULL;

