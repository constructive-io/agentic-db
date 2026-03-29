-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/permissions/alterations/alt0000009859


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN permissions DROP NOT NULL;


