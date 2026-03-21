-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/created_at/alterations/alt0000003420


ALTER TABLE agentic_db_memberships_public.org_chart_edge_grants 
  ALTER COLUMN created_at DROP NOT NULL;


