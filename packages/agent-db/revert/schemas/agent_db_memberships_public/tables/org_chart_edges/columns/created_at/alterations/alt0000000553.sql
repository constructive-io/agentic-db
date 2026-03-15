-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/created_at/alterations/alt0000000553


ALTER TABLE agent_db_memberships_public.org_chart_edges 
  ALTER COLUMN created_at DROP DEFAULT;


