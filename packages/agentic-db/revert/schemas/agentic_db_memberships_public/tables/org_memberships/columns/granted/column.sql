-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/granted/column


ALTER TABLE agentic_db_memberships_public.org_memberships 
  DROP COLUMN granted RESTRICT;


