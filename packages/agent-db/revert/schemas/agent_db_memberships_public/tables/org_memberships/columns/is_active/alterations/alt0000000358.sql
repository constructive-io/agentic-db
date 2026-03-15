-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_active/alterations/alt0000000358


ALTER TABLE agent_db_memberships_public.org_memberships 
  ALTER COLUMN is_active DROP NOT NULL;


