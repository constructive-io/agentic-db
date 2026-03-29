-- Revert: schemas/agentic_db_memberships_public/tables/org_members/columns/entity_id/alterations/alt0000002918


ALTER TABLE agentic_db_memberships_public.org_members 
  ALTER COLUMN entity_id DROP NOT NULL;


