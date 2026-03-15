-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_chart_edges 
  DROP COLUMN created_at RESTRICT;


