-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/indexes/org_memberships_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/entity_id/column


CREATE INDEX org_memberships_entity_id_idx ON "agent_db_memberships_public".org_memberships USING BTREE ( entity_id );

