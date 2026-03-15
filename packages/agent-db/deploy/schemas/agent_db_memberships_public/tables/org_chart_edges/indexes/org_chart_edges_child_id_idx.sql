-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/indexes/org_chart_edges_child_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/child_id/column


CREATE INDEX org_chart_edges_child_id_idx ON agent_db_memberships_public.org_chart_edges USING BTREE ( child_id );

