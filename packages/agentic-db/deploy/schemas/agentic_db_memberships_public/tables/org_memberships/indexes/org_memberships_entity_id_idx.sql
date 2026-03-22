-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/indexes/org_memberships_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/entity_id/column


CREATE INDEX org_memberships_entity_id_idx ON "agentic_db_memberships_public".org_memberships USING BTREE ( entity_id );

