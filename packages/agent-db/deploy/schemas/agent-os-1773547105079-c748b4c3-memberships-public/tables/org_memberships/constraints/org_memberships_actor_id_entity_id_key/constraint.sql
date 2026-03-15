-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/constraints/org_memberships_actor_id_entity_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
  ADD CONSTRAINT org_memberships_actor_id_entity_id_key 
    UNIQUE (actor_id, entity_id);

