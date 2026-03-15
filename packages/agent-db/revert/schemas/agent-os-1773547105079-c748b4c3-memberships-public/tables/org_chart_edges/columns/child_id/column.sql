-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/columns/child_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_chart_edges 
  DROP COLUMN child_id RESTRICT;


