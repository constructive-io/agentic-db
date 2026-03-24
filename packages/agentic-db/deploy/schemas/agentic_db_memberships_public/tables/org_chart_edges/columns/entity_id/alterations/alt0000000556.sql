-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/entity_id/alterations/alt0000000556
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/entity_id/column


COMMENT ON COLUMN "agentic_db_memberships_public".org_chart_edges.entity_id IS 'Organization this hierarchy edge belongs to';

