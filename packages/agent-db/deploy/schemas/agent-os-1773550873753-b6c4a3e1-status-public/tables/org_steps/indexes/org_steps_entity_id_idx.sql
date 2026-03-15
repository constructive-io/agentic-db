-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/indexes/org_steps_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/columns/entity_id/column


CREATE INDEX org_steps_entity_id_idx ON "agent-os-1773550873753-b6c4a3e1-status-public".org_steps USING BTREE ( entity_id );

