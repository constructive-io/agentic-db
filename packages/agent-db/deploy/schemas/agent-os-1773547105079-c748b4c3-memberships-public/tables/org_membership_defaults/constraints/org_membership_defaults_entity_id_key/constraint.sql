-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/constraints/org_membership_defaults_entity_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_membership_defaults 
  ADD CONSTRAINT org_membership_defaults_entity_id_key 
    UNIQUE (entity_id);

