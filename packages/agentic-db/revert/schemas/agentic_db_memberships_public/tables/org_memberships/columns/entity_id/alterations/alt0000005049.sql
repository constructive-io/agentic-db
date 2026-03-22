-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/entity_id/alterations/alt0000005049


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN entity_id DROP NOT NULL;


