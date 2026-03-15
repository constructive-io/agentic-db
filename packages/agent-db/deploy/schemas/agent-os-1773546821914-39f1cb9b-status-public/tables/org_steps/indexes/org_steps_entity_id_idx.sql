-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/indexes/org_steps_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/columns/entity_id/column


CREATE INDEX org_steps_entity_id_idx ON "agent-os-1773546821914-39f1cb9b-status-public".org_steps USING BTREE ( entity_id );

