-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/indexes/org_chart_edge_grants_grantor_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/grantor_id/column


CREATE INDEX org_chart_edge_grants_grantor_id_idx ON agent_db_memberships_public.org_chart_edge_grants USING BTREE ( grantor_id );

