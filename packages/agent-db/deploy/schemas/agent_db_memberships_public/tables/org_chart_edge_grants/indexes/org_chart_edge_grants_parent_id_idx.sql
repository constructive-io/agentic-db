-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/indexes/org_chart_edge_grants_parent_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/parent_id/column


CREATE INDEX org_chart_edge_grants_parent_id_idx ON "agent_db_memberships_public".org_chart_edge_grants USING BTREE ( parent_id );

