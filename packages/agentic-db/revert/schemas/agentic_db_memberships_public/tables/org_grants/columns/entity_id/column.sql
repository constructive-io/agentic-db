-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/entity_id/column


ALTER TABLE agentic_db_memberships_public.org_grants 
  DROP COLUMN entity_id RESTRICT;


