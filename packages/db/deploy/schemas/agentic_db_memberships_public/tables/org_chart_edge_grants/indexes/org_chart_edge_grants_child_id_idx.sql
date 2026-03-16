-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/indexes/org_chart_edge_grants_child_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/child_id/column


CREATE INDEX org_chart_edge_grants_child_id_idx ON "agentic_db_memberships_public".org_chart_edge_grants USING BTREE ( child_id );

