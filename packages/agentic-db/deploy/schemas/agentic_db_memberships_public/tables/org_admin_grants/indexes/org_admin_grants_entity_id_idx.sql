-- Deploy: schemas/agentic_db_memberships_public/tables/org_admin_grants/indexes/org_admin_grants_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_admin_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/entity_id/column


CREATE INDEX org_admin_grants_entity_id_idx ON agentic_db_memberships_public.org_admin_grants USING BTREE ( entity_id );

