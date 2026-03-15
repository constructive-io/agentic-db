-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/indexes/org_steps_actor_id_name_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/actor_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/entity_id/column


CREATE INDEX org_steps_actor_id_name_entity_id_idx ON "agent-os-1773547105079-c748b4c3-status-public".org_steps USING BTREE ( actor_id, name, entity_id );

