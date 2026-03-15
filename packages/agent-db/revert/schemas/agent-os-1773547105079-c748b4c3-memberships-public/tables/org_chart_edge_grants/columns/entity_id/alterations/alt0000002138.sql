-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edge_grants/columns/entity_id/alterations/alt0000002138


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_chart_edge_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


