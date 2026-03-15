-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_hierarchy_sprts/columns/descendant_id/alterations/alt0000002178
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_hierarchy_sprts/columns/descendant_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_hierarchy_sprts 
  ALTER COLUMN descendant_id SET NOT NULL;

