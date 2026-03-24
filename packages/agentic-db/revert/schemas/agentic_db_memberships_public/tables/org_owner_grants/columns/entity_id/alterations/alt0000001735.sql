-- Revert: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/entity_id/alterations/alt0000001735


ALTER TABLE agentic_db_memberships_public.org_owner_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


