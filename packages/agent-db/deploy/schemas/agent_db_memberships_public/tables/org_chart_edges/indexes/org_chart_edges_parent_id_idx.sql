-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/indexes/org_chart_edges_parent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/parent_id/column


CREATE INDEX org_chart_edges_parent_id_idx ON agent_db_memberships_public.org_chart_edges USING BTREE ( parent_id );

