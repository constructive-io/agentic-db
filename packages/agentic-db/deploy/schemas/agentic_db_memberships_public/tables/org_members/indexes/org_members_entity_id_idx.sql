-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/indexes/org_members_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table
-- requires: schemas/agentic_db_memberships_public/tables/org_members/columns/entity_id/column


CREATE INDEX org_members_entity_id_idx ON "agentic_db_memberships_public".org_members USING BTREE ( entity_id );

