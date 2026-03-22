-- Revert: schemas/agentic_db_memberships_public/tables/org_members/columns/id/alterations/alt0000005053


ALTER TABLE agentic_db_memberships_public.org_members 
  ALTER COLUMN id DROP NOT NULL;


