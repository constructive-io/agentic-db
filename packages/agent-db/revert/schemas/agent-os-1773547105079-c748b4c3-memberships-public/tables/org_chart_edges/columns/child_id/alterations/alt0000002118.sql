-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/columns/child_id/alterations/alt0000002118


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_chart_edges 
  ALTER COLUMN child_id DROP NOT NULL;


