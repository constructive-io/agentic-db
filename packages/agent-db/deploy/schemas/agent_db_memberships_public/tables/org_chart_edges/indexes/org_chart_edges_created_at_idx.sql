-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/indexes/org_chart_edges_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/created_at/column


CREATE INDEX org_chart_edges_created_at_idx ON "agent_db_memberships_public".org_chart_edges ( created_at );

