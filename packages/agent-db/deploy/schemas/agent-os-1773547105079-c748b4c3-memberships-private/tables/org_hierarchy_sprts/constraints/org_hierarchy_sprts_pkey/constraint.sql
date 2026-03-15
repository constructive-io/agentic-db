-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/constraints/org_hierarchy_sprts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".org_hierarchy_sprts 
  ADD CONSTRAINT org_hierarchy_sprts_pkey PRIMARY KEY (entity_id, ancestor_id, descendant_id);

