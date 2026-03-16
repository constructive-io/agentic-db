-- Deploy: schemas/agent_db_status_public/tables/org_steps/indexes/org_steps_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/entity_id/column


CREATE INDEX org_steps_entity_id_idx ON "agent_db_status_public".org_steps USING BTREE ( entity_id );

