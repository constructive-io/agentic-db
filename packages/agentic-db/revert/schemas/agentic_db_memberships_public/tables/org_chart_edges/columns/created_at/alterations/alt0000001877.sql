-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/created_at/alterations/alt0000001877


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  ALTER COLUMN created_at DROP DEFAULT;


