-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/is_grant/alterations/alt0000010076




ALTER TABLE agentic_db_memberships_public.org_chart_edge_grants 
    ALTER COLUMN is_grant DROP DEFAULT;



